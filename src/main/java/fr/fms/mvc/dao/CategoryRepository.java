package fr.fms.mvc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fr.fms.mvc.entities.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
    public List<Category> findAllByOrderByNameAsc();

    public List<Category> findAllByOrderByNameDesc();

}
