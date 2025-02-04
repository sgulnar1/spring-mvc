package aze.coders.spring.mvc.repositories.impl;

import aze.coders.spring.mvc.domains.Category;
import aze.coders.spring.mvc.repositories.CategoryRepository;

import java.util.ArrayList;
import java.util.List;

public class CategoryRepositoryImpl implements CategoryRepository {
    private static final List<Category> categories = new ArrayList<Category>();
    {
        for (int i = 1; i <= 20; i++)
            categories.add(new Category(i, "name " + i, "desc " + i));

    }

    @Override
    public void insert(Category category) {
        categories.add(category);
    }

    @Override
    public void update(Category category) {
        Category findCategory = findById(category.getId());
        if (findCategory != null) {
            if(category.getName() != null && !category.getName().isEmpty())
                findCategory.setName(category.getName());
            if(category.getDescription() != null && !category.getDescription().isEmpty())
                findCategory.setDescription(category.getDescription());
        }
        categories.set(categories.indexOf(findCategory), findCategory);
    }

    @Override
    public void delete(Category category) {
        categories.remove(category);
    }

    @Override
    public List<Category> findByName(String name) {
        return categories.stream().filter(category -> category.getName().equalsIgnoreCase(name)).toList();
    }

    @Override
    public List<Category> findAll() {
        return categories;
    }

    @Override
    public Category findById(Integer id) {
        return categories.stream().filter(category -> category.getId().equals(id)).findFirst().orElse(null);
    }
}
