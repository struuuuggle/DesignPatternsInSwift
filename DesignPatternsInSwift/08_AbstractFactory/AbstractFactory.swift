//
//  AbstractFactory.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/27.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

enum AbstractFactory {

    static func main(factoryCategory: FactoryCategory) {
        let factory = Factory.getFactory(from: factoryCategory)
        
        let asahi = factory.createLink(caption: "朝日新聞", url: "https://www.asahi.com")
        let yomiuri = factory.createLink(caption: "読売新聞", url: "https://www.yomiuri.co.jp")
        
        let usYahoo = factory.createLink(caption: "Yahoo!", url: "https://www.yahoo.com")
        let jpYahoo = factory.createLink(caption: "Yahoo!Japan", url: "https://www.yahoo.co.jp")
        let excite = factory.createLink(caption: "Excite", url: "https://www.exite.com")
        let google = factory.createLink(caption: "Google", url: "https://www.google.com")
        
        let trayNews = factory.createTray(caption: "新聞")
        trayNews.add(item: asahi)
        trayNews.add(item: yomiuri)
        
        let trayYahoo = factory.createTray(caption: "Yahoo!")
        trayYahoo.add(item: usYahoo)
        trayYahoo.add(item: jpYahoo)
        
        let traySearch = factory.createTray(caption: "サーチエンジン")
        traySearch.add(item: trayYahoo)
        traySearch.add(item: excite)
        traySearch.add(item: google)
        
        let page = factory.createPage(title: "LinkPage", author: "struuuuggle")
        page.add(item: trayNews)
        page.add(item: trayYahoo)
        page.add(item: traySearch)
        
        page.output()
    }
}
