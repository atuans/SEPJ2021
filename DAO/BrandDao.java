package DAO;

import java.util.List;
import BEAN.Brand;

public interface BrandDao
{
	boolean addBrand(Brand brand);
	
    List<Brand> getAllBrand(); 
    int getBrandIdByProductId(int productId);
    
    int getTotalBrand();
    String getBrandNameById(int brandId);
    boolean deleteBrandById(int brandId);
}
