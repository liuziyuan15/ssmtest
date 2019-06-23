package com.controller;

import com.pojo.Info;
import com.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/info")
public class InfoController {
    @Autowired
    private InfoService infoService;

    @RequestMapping("/allInfo")
    public String list(Model model){
        List<Info> list = infoService.queryAllInfo();
        model.addAttribute("list", list);
        return "allInfo";
    }

    @RequestMapping("toAddInfo")
    public String toAddInfo(){
        return "addInfo";
    }

    @RequestMapping("/addInfo")
    public String addInfo(Info info){
        infoService.addInfo(info);
        return "redirect:/info/allInfo";
    }

    @RequestMapping("/del/{eId}")
    public String deleteInfo(@PathVariable("eId") Integer eid) {
        infoService.deleteInfoById(eid);
        return "redirect:/info/allInfo";
    }

    @RequestMapping("toUpdateInfo")
    public String toUpdateInfo(Model model,Integer eid){
        model.addAttribute("info", infoService.queryById(eid));
        return "updateInfo";
    }

    @RequestMapping("updateInfo")
    public String updateInfo(Model model,Info info){
        infoService.updateInfo(info);
        info = infoService.queryById(info.getEid());
        model.addAttribute("info",info);
        return "redirect:/info/allInfo";
    }

    @RequestMapping("toQRCode")
    public String toQRCode(Model model,Integer eid){
        model.addAttribute("info", infoService.queryById(eid));
        return "QRCode";
    }
}
