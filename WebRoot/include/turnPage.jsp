<%@page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<!-- turnPage.jsp -->
<div class="pagesnav" style="text-align:center;">
	<c:if test="${turnpage.isAsyn == false}">
		<c:if test="${turnpage.pages > 1}">
		
			<span>共 ${turnpage.total} 条</span>
			<c:if test="${turnpage.current-4>0}"><a href="${turnpage.urlPrefix}${turnpage.current-4}${turnpage.urlSuffix}" title="上一页">上一页</a></c:if>
			
			<c:if test="${turnpage.current-3>=1}"><a href="${turnpage.urlPrefix}${turnpage.current-3}">${turnpage.current-3}${turnpage.urlSuffix}</a></c:if>
			<c:if test="${turnpage.current-2>=1}"><a href="${turnpage.urlPrefix}${turnpage.current-2}">${turnpage.current-2}${turnpage.urlSuffix}</a></c:if>
			<c:if test="${turnpage.current-1>=1}"><a href="${turnpage.urlPrefix}${turnpage.current-1}">${turnpage.current-1}${turnpage.urlSuffix}</a></c:if>
			<strong>${turnpage.current}</strong>
			<c:if test="${turnpage.current+1<=turnpage.pages}"><a href="${turnpage.urlPrefix}${turnpage.current+1}${turnpage.urlSuffix}">${turnpage.current+1}</a></c:if>
			<c:if test="${turnpage.current+2<=turnpage.pages}"><a href="${turnpage.urlPrefix}${turnpage.current+2}${turnpage.urlSuffix}">${turnpage.current+2}</a></c:if>
			<c:if test="${turnpage.current+3<=turnpage.pages}"><a href="${turnpage.urlPrefix}${turnpage.current+3}${turnpage.urlSuffix}">${turnpage.current+3}</a></c:if>
			
			<c:if test="${turnpage.current+4<=turnpage.pages}"><a href="${turnpage.urlPrefix}${turnpage.current+4}${turnpage.urlSuffix}" title="下一页">下一页</a></c:if>

		</c:if>
	</c:if>
	<c:if test="${turnpage.isAsyn == true}">
		<c:if test="${turnpage.pages > 1}">
			<span>共 ${turnpage.total} 条</span>
			<c:if test="${turnpage.current-4>0}"><a href="#" onclick="doTurnPage(${turnpage.current-4});return false;" title="上一页">上一页</a></c:if>

			<c:if test="${turnpage.current-3>=1}"><a href="#" onclick="doTurnPage(${turnpage.current-3});return false;">${turnpage.current-3}${turnpage.urlSuffix}</a></c:if>
			<c:if test="${turnpage.current-2>=1}"><a href="#" onclick="doTurnPage(${turnpage.current-2});return false;">${turnpage.current-2}${turnpage.urlSuffix}</a></c:if>
			<c:if test="${turnpage.current-1>=1}"><a href="#" onclick="doTurnPage(${turnpage.current-1});return false;">${turnpage.current-1}${turnpage.urlSuffix}</a></c:if>
			<strong>${turnpage.current}</strong>
			<c:if test="${turnpage.current+1<=turnpage.pages}"><a href="#" onclick="doTurnPage(${turnpage.current+1});return false;">${turnpage.current+1}</a></c:if>
			<c:if test="${turnpage.current+2<=turnpage.pages}"><a href="#" onclick="doTurnPage(${turnpage.current+2});return false;">${turnpage.current+2}</a></c:if>
			<c:if test="${turnpage.current+3<=turnpage.pages}"><a href="#" onclick="doTurnPage(${turnpage.current+3});return false;">${turnpage.current+3}</a></c:if>
			
			<c:if test="${turnpage.current+4<=turnpage.pages}"><a href="#"  onclick="doTurnPage(${turnpage.current+4});return false;" title="下一页">下一页</a></c:if>

		</c:if>
	</c:if>	
</div>