package xj.ericli.ssi.action;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import xj.ericli.ssi.common.base.BaseAction;
import xj.ericli.ssi.db.ibatis.dao.StaffDAO;
import xj.ericli.ssi.db.ibatis.model.Staff;

public class StaffAction extends BaseAction {
	private StaffDAO staffDAO = null;

	public ActionForward execute(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
		staffDAO = (StaffDAO) ctx.getBean("staffDAO");

		try {
			Staff staff = staffDAO.selectByPrimaryKey(1);
			httpServletRequest.setAttribute("staff", staff);
			System.out.println(staff.getStaffName());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return actionMapping.findForward("success");

	}
}
