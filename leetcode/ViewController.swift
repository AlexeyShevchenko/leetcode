//
//  ViewController.swift
//  leetcode
//
//  Created by Aleksey Shevchenko on 27.11.2020.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stringMatrix =  [[".",".",".",".","5",".",".","1","."],
                    [".","4",".","3",".",".",".",".","."],
                    [".",".",".",".",".","3",".",".","1"],
                    ["8",".",".",".",".",".",".","2","."],
                    [".",".","2",".","7",".",".",".","."],
                    [".","1","5",".",".",".",".",".","."],
                    [".",".",".",".",".","2",".",".","."],
                    [".","2",".","9",".",".",".",".","."],
                    [".",".","4",".",".",".",".",".","."]]
        var characterMatrix: [[Character]] = []

        for row in stringMatrix {
            var characterRow: [Character] = []
            for element in row {
                characterRow.append(Character(element))
            }
            characterMatrix.append(characterRow)
        }
        
        
        let s = ValidSudoku.Solution()
        _ = s.isValidSudoku(characterMatrix)
    }
}

class QSort {
    func sort<T: Comparable>(_ array: [T]) -> [T] {
        guard array.count > 1 else { return array }
        let pivot = array[array.count / 2]
        let less = array.filter({ $0 < pivot })
        let greater = array.filter({ $0 > pivot })
        return sort(less) + [pivot] + sort(greater)
    }
}

/*
 let r = s.findRateAndRoute(
 for: "USDRUB",
 rates: [
 "GBPRUB" : 100,
 "USDGBP" : 0.7,
 "GBPEUR" : 0.83,
 "EURRUB" : 86.3,
 ]
 )
 */

class Exchange {
    func findRateAndRoute(
        for currencyPair: String,
        rates: [String: Decimal]
    ) -> (
        rate: Decimal,
        route: String
    ) {
        var fromToDict: [String: Set<String>] = [:]
        
        for key in rates {
            let from = String("\(key.key.prefix(3))")
            let to = String("\(key.key.suffix(3))")
            if var tos = fromToDict[from] {
                tos.insert(to)
                fromToDict[from] = tos
            } else {
                fromToDict[from] = [to]
            }
        }
        
        let from = String("\(currencyPair.prefix(3))")
        let to = String("\(currencyPair.suffix(3))")
        var visitedCurrencies: Set<String> = .init()
        var queue: [(currency: String, rate: Decimal, route: String)] = []
        queue.append((currency: from, rate: 1, route: from))
        
        // BFS
        while !queue.isEmpty {
            let (currentCurrency, currentRate, currentRoute) = queue.removeFirst()
            
            if currentCurrency == to {
                return (rate: currentRate, route: currentRoute)
            }
            
            guard let availableToExchangeCurrencies = fromToDict[currentCurrency] else { continue }
            
            for currency in availableToExchangeCurrencies {
                if visitedCurrencies.contains(currency) { continue }
                let exchangeKey = "\(currentCurrency)\(currency)"
                guard let exchangeRate = rates[exchangeKey] else { continue }
                let newRate = currentRate * exchangeRate
                let newRoute = currentRoute + currency
                queue.append((currency: currency, rate: newRate, route: newRoute))
                visitedCurrencies.insert(currency)
            }
        }
        
        return (0, "")
    }
}
