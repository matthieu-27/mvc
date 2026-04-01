package fr.fms.mvc.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fr.fms.mvc.entities.Article;
import fr.fms.mvc.entities.Category;

@Repository
public interface ArticleRepository extends JpaRepository<Article, Long> {
    public List<Article> findByBrand(String brand);

    public List<Article> findByBrandContains(String brand);

    public List<Article> findByBrandAndPrice(String brand, double price);

    public List<Article> findByBrandContainsAndDescriptionContains(String brand, String description);

    public List<Article> findByBrandContainsAndPriceGreaterThan(String brand, double price);

    public Page<Article> findByDescriptionContains(String description, Pageable page);

    public Page<Article> findByCategoryAndDescriptionContains(Category category, String description, Pageable page);

}
