package fr.fms.mvc.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.fms.mvc.dao.ArticleRepository;
import fr.fms.mvc.entities.Article;

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
    public String addArticle(Article article) {
        articleRepository.save(article);
        return "redirect:/";
    }

    @GetMapping("/delete")
    public String delete(Long id, int page, String search) {
        articleRepository.deleteById(id);
        return "redirect:/?page=" + page + "&search=" + search;
    }

}
