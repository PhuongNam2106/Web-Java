package npn.devpro.shop16.dto;
import java.math.BigDecimal;
import java.lang.String;
public class CartItem {
	/**
	 * danh sách sản phẩm.
	 * @author daing
	 *
	 */
		// mã sản phẩm 
		private String productAvatar;

		public String getProductAvatar() {
		return productAvatar;
	}

	public void setProductAvatar(String productAvatar) {
		this.productAvatar = productAvatar;
	}

		private int productId;
		
		// tên sản phẩme
		private String productName;
		
		// số lương sản phẩm
		private int quanlity;
		
		// đơn giá sản phẩm
		private BigDecimal priceUnit;

		public int getProductId() {
			return productId;
		}

		public void setProductId(int productId) {
			this.productId = productId;
		}

		public String getProductName() {
			return productName;
		}

		public void setProductName(String productName) {
			this.productName = productName;
		}

		public int getQuanlity() {
			return quanlity;
		}

		public void setQuanlity(int quanlity) {
			this.quanlity = quanlity;
		}

		public BigDecimal getPriceUnit() {
			return priceUnit;
		}

		public void setPriceUnit(BigDecimal priceUnit) {
			this.priceUnit = priceUnit;
		}
}
