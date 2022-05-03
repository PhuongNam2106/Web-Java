package npn.devpro.shop16.controller.khachhang;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import npn.devpro.shop16.controller.BaseController;
import npn.devpro.shop16.dto.ProductSearchModel;
import npn.devpro.shop16.dto.UserSearchModel;
import npn.devpro.shop16.entity.Products;
import npn.devpro.shop16.entity.User;
import npn.devpro.shop16.services.ProductService;

@Controller // tạo một Bean là một controller
public class HomeController extends BaseController{
	@Autowired
	private ProductService productService;
	@RequestMapping(value = {"/home"},
			method = RequestMethod.GET)
	public String home (final Model model, final HttpServletRequest request, final HttpServletResponse response)
	throws IOException {
		ProductSearchModel searchModel = new ProductSearchModel();
		searchModel.keyword = request.getParameter("keyword");
		searchModel.setPage(getCurrentPage(request));
		searchModel.categoryId = super.getInteger(request, "categoryId");

		model.addAttribute("productsWithPaging", productService.search(searchModel));
		model.addAttribute("searchModel", searchModel);
		return "khachhang/trangchu";
	}
}
