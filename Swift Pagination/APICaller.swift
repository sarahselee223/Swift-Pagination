//
//  APICaller.swift
//  Swift Pagination
//
//  Created by Sarah Lee on 3/18/22.
//

import Foundation

class APICaller {
    public var isPaginating = false
    
    let mockData = ["bsfnofri",
                    "qwjafcaj",
                    "evfbxcgw",
                    "mhjhfvrx",
                    "wqpoqhco",
                    "fzprkcui",
                    "msrqmcql",
                    "brphrqaq",
                    "uatnvzqy",
                    "gcyzpxdx",
                    "lhhndxma",
                    "kechzalz",
                    "ytbhczpk",
                    "xslhdtdl",
                    "nwtfgnyv",
                    "wrjmtcix",
                    "vtuyczgu",
                    "epuuhxjx",
                    "mgfdbcnj",
                    "llxoqulx",
                    "ycsunpfs",
                    "hzzezstp",
                    "iwxpnqck",
                    "evvcoqye",
                    "fpoiepzv",
                    "smkqnsdj",
                    "rbnpxsxo",
                    "xwurdswq",
                    "timhvxac",
                    "upllkdnd"]
    let newData = ["사과", "바나나", "샤인머스켓", "무화과", "배", "사과", "바나나", "샤인머스켓", "무화과", "배"]
    
    func fetchData(pagination: Bool = false, completion: @escaping (Result<[String], Error>)-> Void) {
        if pagination {
            self.isPaginating = true
        }
        DispatchQueue.global().asyncAfter(deadline: .now() + (pagination ? 2 : 3) , execute: { [weak self] in
            guard let self = self else { return }
            completion(.success( pagination ? self.newData : self.mockData))
            if pagination {
                self.isPaginating = false
            }
        })
    }
}

