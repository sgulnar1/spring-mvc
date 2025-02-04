package aze.coders.spring.mvc.repositories;

import aze.coders.spring.mvc.domains.Category;

import java.util.List;

public interface CategoryRepository {
    void insert (Category category);
    void update (Category category);
    void delete (Category category);
    List<Category> findByName (String name);
    List<Category> findAll ();
    Category findById (Integer id);

}
