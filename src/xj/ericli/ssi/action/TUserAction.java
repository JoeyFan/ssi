package xj.ericli.ssi.action;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import xj.ericli.ssi.common.base.BaseAction;
import xj.ericli.ssi.db.ibatis.dao.TUserDAO;
import xj.ericli.ssi.db.ibatis.model.TUser;

/**
 * action 层，负责调用dao层获取数据信息，在这里可以添加缓存处理机制，以及异常处理
 * 
 * @author lg
 * 
 */
public class TUserAction extends BaseAction {
	private TUserDAO tUserDAO;

	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
		tUserDAO = (TUserDAO) ctx.getBean("userDAO");

		TUser user = null;
		try {
			user = tUserDAO.selectByPrimaryKey(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("user", user);
		return mapping.findForward("success");
	}
}
