   <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <jsp:include page="/WEB-INF/view/common/variable.jsp"></jsp:include>
	 
	 <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="${base}/admin">
              <span data-feather="home"></span>
              Dashboard
            </a>
          </li>
          
          <li  class="nav-item sub">
            <a class="nav-link" href="#">
              <span data-feather="file"></span>
              Orders
            </a>
            <ul class="sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="${base }/admin/saleOrderList"> Danh sách đơn hàng </a>
                </li>
               
              </ul>
          </li>
          
          <li style="margin-bottom: -36px;" class="nav-item sub">
            <a class="nav-link" href="#">
              <span data-feather="shopping-cart"></span>
              Products
            </a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="${base }/admin/addproduct"> Thêm sản phẩm</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="${base }/admin/product/list"> Danh sách sản phẩm</a>
                </li>
              </ul>
          </li>
          
           <li style="margin-bottom: -36px;" class="nav-item sub">
            <a class="nav-link" href="#">
              <span data-feather="shopping-cart"></span>
              Category
            </a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="${base }/admin/addcategory"> Thêm danh mục </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="${base }/admin/categoryList"> Danh sách danh mục</a>
                </li>
              </ul>
          </li>
          <li style="margin-bottom: -36px;" class="nav-item sub">
            <a class="nav-link" href="#">
              <span data-feather="users"></span>
              Customers
            </a>
             <ul class="sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="${base }/admin/contact/list"> Danh sách contact </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="${base }/admin/userList"> Danh sách khách hàng</a>
                </li>
              </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="bar-chart-2"></span>
              Reports
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="layers"></span>
              Integrations
            </a>
          </li>
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
          <span>Saved reports</span>
          <a class="link-secondary" href="#" aria-label="Add a new report">
            <span data-feather="plus-circle"></span>
          </a>
        </h6>
        <ul class="nav flex-column mb-2">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Current month
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Last quarter
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Social engagement
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Year-end sale
            </a>
          </li>
        </ul>
      </div>
    </nav>