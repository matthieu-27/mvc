package fr.fms.mvc.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.fms.mvc.dao.ArticleRepository;
import fr.fms.mvc.entities.Article;
import jakarta.validation.Valid;

@Controller
public class ArticleController {

    @Autowired
    private ArticleRepository articleRepository;

    @GetMapping("/")
    public String articles(@RequestParam(name = "page", defaultValue = "0") int page,
            @RequestParam(name = "search", defaultValue = "") String search, Model model) {
        Page<Article> articles = articleRepository.findByDescriptionContains(search, PageRequest.of(page, 5));
        model.addAttribute("pages", new int[articles.getTotalPages()]);
        model.addAttribute("articles", articles.getContent());
        model.addAttribute("currentPage", page);
        model.addAttribute("search", search);
        return "articles";
    }

    @GetMapping("/add")
    public String showAddForm(Article article) {
        return "add-article";
    }

    @PostMapping("/add")
    public String addArticle(Model model, @Valid Article article, BindingResult result) {
        if (result.hasFieldErrors()) {
            List<String> errors = new ArrayList<>();
            for (FieldError error : result.getFieldErrors()) {
                errors.add(error.getDefaultMessage());
            }
            model.addAttribute("errors", errors);
            return "add-article";
        }
        articleRepository.save(article);
        int length = articleRepository.findAll().size();
        return "redirect:/";
    }

    @GetMapping("/delete")
    public String delete(Long id, int page, String search) {
        articleRepository.deleteById(id);
        return "redirect:/?page=" + page + "&search=" + search;
    }

}
