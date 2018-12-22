package Bize;

import java.math.BigDecimal;
import java.util.List;

public class PageData {
	private BigDecimal total;
	private List<?> rows;
	public BigDecimal getTotal() {
		return total;
	}
	public void setTotal(BigDecimal total) {
		this.total = total;
	}
	public List<?> getRows() {
		return rows;
	}
	public void setRows(List<?> rows) {
		this.rows = rows;
	}
	

}
