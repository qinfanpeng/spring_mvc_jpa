package com.springapp.mvc.controller;

import com.springapp.mvc.entity.User;
import com.springapp.mvc.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created with IntelliJ IDEA.
 * User: qfp
 * Date: 13-10-31
 * Time: 下午11:06
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/users")
public class UserController {
    @Autowired
    private UserRepository userRepository;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(ModelMap model) {
        model.addAttribute("users", userRepository.findAll());
        return "index";
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String _new(ModelMap model) {
        model.addAttribute("user", new User());
        return "new";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String show(@PathVariable("id") Long id, ModelMap model) {
        model.addAttribute("user", userRepository.findOne(id));
        return "show";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@ModelAttribute("user") User user, BindingResult result) {
        userRepository.save(user);
        return "redirect:/users";
    }

    @RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
    public String update(@ModelAttribute("user") User user, ModelMap model) {
        User _user = userRepository.updateAttributes(user.getFirstName(), user.getLastName(), user.getEmail(), user.getId());
        model.addAttribute("user", _user);
        return "redirect:/users/"+_user.getId();
    }

    @RequestMapping(value = "/{id}/delete")
    public String delete(@PathVariable("id") Long id) {
        userRepository.delete(userRepository.findOne(id));
        return "redirect:/users";
    }

    @RequestMapping(value = "/{id}/edit", method = RequestMethod.GET)
    public String edit(@PathVariable("id") Long id, ModelMap model) {
        model.addAttribute("user", userRepository.findOne(id));
        return "edit";
    }

}
