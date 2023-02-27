//
//  CountriesData.swift
//  project
//
//  Created by Homayun on 1401-12-07.
//

import Foundation

struct CountriesViewModel: Codable, Identifiable {
    var id: String {
        return self.name.official
    }
    let name: Name
    let tld: [String]?
    let cca2: String
    let ccn3: String?
    let cca3: String
    let cioc: String?
    let independent: Bool?
    let status: Status
    let unMember: Bool
    let currencies: Currencies?
    let idd: Idd
    let capital: [String]?
    let altSpellings: [String]
    let region: Region
    let subregion: String?
    let languages: [String: String]?
    let translations: [String: Translation]
    let latlng: [Double]
    let landlocked: Bool
    let borders: [String]?
    let area: Double
    let demonyms: Demonyms?
    let flag: String
    let maps: Maps
    let population: Int
    let gini: [String: Double]?
    let fifa: String?
    let car: Car
    let timezones: [String]
    let continents: [Continent]
    let flags: Flags
    let coatOfArms: CoatOfArms
    let startOfWeek: StartOfWeek
    let capitalInfo: CapitalInfo
    let postalCode: PostalCode?
}

struct CapitalInfo: Codable {
    let latlng: [Double]?
}

struct Car: Codable {
    let signs: [String]?
    let side: Side
}

enum Side: String, Codable {
    case sideLeft = "left"
    case sideRight = "right"
}

struct CoatOfArms: Codable {
    let png: String?
    let svg: String?
}

enum Continent: String, Codable {
    case africa = "Africa"
    case antarctica = "Antarctica"
    case asia = "Asia"
    case europe = "Europe"
    case northAmerica = "North America"
    case oceania = "Oceania"
    case southAmerica = "South America"
}

struct Currencies: Codable {
    let eur, aud, usd, bgn: Aed?
    let ron, bhd, amd, gip: Aed?
    let pyg, nzd, xcd, brl: Aed?
    let egp, zmw, omr, tzs: Aed?
    let lyd, kgs, sbd, ngn: Aed?
    let kwd, xof, sll, gbp: Aed?
    let jep, mmk, xaf, lak: Aed?
    let hkd, mur, stn, dzd: Aed?
    let mad, mru, mga, mnt: Aed?
    let xpf, gtq, twd, hnl: Aed?
    let tjs, afn, sek, fjd: Aed?
    let ttd, uzs, bob, myr: Aed?
    let srd, cop, szl, zar: Aed?
    let bwp, etb, gmd, pgk: Aed?
    let czk, rub, mop, djf: Aed?
    let php, bnd, sgd, mwk: Aed?
    let imp, shp, ghs, nok: Aed?
    let jod, rsd, ggp, crc: Aed?
    let bam: BAM?
    let sos, awg, bsd, dkk: Aed?
    let ang, mxn, zwl, lbp: Aed?
    let clp, inr, ils, pkr: Aed?
    let kzt, jpy, mkd, bif: Aed?
    let idr, cuc, cup, kpw: Aed?
    let kyd, kmf, ves, pab: Aed?
    let tmt, cdf, thb, isk: Aed?
    let sar, irr, mzn, fok: Aed?
    let kes, bzd, chf, tnd: Aed?
    let khr, ckd, lrd, bdt: Aed?
    let byn, mvr, jmd, nad: Aed?
    let fkp, azn, huf, lkr: Aed?
    let vnd, tvd, top, bmd: Aed?
    let uyu, syp, cny, ern: Aed?
    let vuv, npr, aoa, gnf: Aed?
    let ars, dop, cve, qar: Aed?
    let krw, htg, iqd, gyd: Aed?
    let aed, rwf, mdl, nio: Aed?
    let sdg: BAM?
    let pln, ssp, bbd, yer: Aed?
    let wst, cad, lsl, btn: Aed?
    let uah, pen, gel, currenciesTRY: Aed?
    let ugx, kid, scr, all: Aed?

    enum CodingKeys: String, CodingKey {
        case eur = "EUR"
        case aud = "AUD"
        case usd = "USD"
        case bgn = "BGN"
        case ron = "RON"
        case bhd = "BHD"
        case amd = "AMD"
        case gip = "GIP"
        case pyg = "PYG"
        case nzd = "NZD"
        case xcd = "XCD"
        case brl = "BRL"
        case egp = "EGP"
        case zmw = "ZMW"
        case omr = "OMR"
        case tzs = "TZS"
        case lyd = "LYD"
        case kgs = "KGS"
        case sbd = "SBD"
        case ngn = "NGN"
        case kwd = "KWD"
        case xof = "XOF"
        case sll = "SLL"
        case gbp = "GBP"
        case jep = "JEP"
        case mmk = "MMK"
        case xaf = "XAF"
        case lak = "LAK"
        case hkd = "HKD"
        case mur = "MUR"
        case stn = "STN"
        case dzd = "DZD"
        case mad = "MAD"
        case mru = "MRU"
        case mga = "MGA"
        case mnt = "MNT"
        case xpf = "XPF"
        case gtq = "GTQ"
        case twd = "TWD"
        case hnl = "HNL"
        case tjs = "TJS"
        case afn = "AFN"
        case sek = "SEK"
        case fjd = "FJD"
        case ttd = "TTD"
        case uzs = "UZS"
        case bob = "BOB"
        case myr = "MYR"
        case srd = "SRD"
        case cop = "COP"
        case szl = "SZL"
        case zar = "ZAR"
        case bwp = "BWP"
        case etb = "ETB"
        case gmd = "GMD"
        case pgk = "PGK"
        case czk = "CZK"
        case rub = "RUB"
        case mop = "MOP"
        case djf = "DJF"
        case php = "PHP"
        case bnd = "BND"
        case sgd = "SGD"
        case mwk = "MWK"
        case imp = "IMP"
        case shp = "SHP"
        case ghs = "GHS"
        case nok = "NOK"
        case jod = "JOD"
        case rsd = "RSD"
        case ggp = "GGP"
        case crc = "CRC"
        case bam = "BAM"
        case sos = "SOS"
        case awg = "AWG"
        case bsd = "BSD"
        case dkk = "DKK"
        case ang = "ANG"
        case mxn = "MXN"
        case zwl = "ZWL"
        case lbp = "LBP"
        case clp = "CLP"
        case inr = "INR"
        case ils = "ILS"
        case pkr = "PKR"
        case kzt = "KZT"
        case jpy = "JPY"
        case mkd = "MKD"
        case bif = "BIF"
        case idr = "IDR"
        case cuc = "CUC"
        case cup = "CUP"
        case kpw = "KPW"
        case kyd = "KYD"
        case kmf = "KMF"
        case ves = "VES"
        case pab = "PAB"
        case tmt = "TMT"
        case cdf = "CDF"
        case thb = "THB"
        case isk = "ISK"
        case sar = "SAR"
        case irr = "IRR"
        case mzn = "MZN"
        case fok = "FOK"
        case kes = "KES"
        case bzd = "BZD"
        case chf = "CHF"
        case tnd = "TND"
        case khr = "KHR"
        case ckd = "CKD"
        case lrd = "LRD"
        case bdt = "BDT"
        case byn = "BYN"
        case mvr = "MVR"
        case jmd = "JMD"
        case nad = "NAD"
        case fkp = "FKP"
        case azn = "AZN"
        case huf = "HUF"
        case lkr = "LKR"
        case vnd = "VND"
        case tvd = "TVD"
        case top = "TOP"
        case bmd = "BMD"
        case uyu = "UYU"
        case syp = "SYP"
        case cny = "CNY"
        case ern = "ERN"
        case vuv = "VUV"
        case npr = "NPR"
        case aoa = "AOA"
        case gnf = "GNF"
        case ars = "ARS"
        case dop = "DOP"
        case cve = "CVE"
        case qar = "QAR"
        case krw = "KRW"
        case htg = "HTG"
        case iqd = "IQD"
        case gyd = "GYD"
        case aed = "AED"
        case rwf = "RWF"
        case mdl = "MDL"
        case nio = "NIO"
        case sdg = "SDG"
        case pln = "PLN"
        case ssp = "SSP"
        case bbd = "BBD"
        case yer = "YER"
        case wst = "WST"
        case cad = "CAD"
        case lsl = "LSL"
        case btn = "BTN"
        case uah = "UAH"
        case pen = "PEN"
        case gel = "GEL"
        case currenciesTRY = "TRY"
        case ugx = "UGX"
        case kid = "KID"
        case scr = "SCR"
        case all = "ALL"
    }
}

struct Aed: Codable {
    let name, symbol: String
}

struct BAM: Codable {
    let name: String
}

struct Demonyms: Codable {
    let eng: Eng
    let fra: Eng?
}

struct Eng: Codable {
    let f, m: String
}

struct Flags: Codable {
    let png: String
    let svg: String
    let alt: String?
}

struct Idd: Codable {
    let root: String?
    let suffixes: [String]?
}

struct Maps: Codable {
    let googleMaps, openStreetMaps: String
}

struct Name: Codable {
    let common, official: String
    let nativeName: [String: Translation]?
}

struct Translation: Codable {
    let official, common: String
}

struct PostalCode: Codable {
    let format: String
    let regex: String?
}

enum Region: String, Codable {
    case africa = "Africa"
    case americas = "Americas"
    case antarctic = "Antarctic"
    case asia = "Asia"
    case europe = "Europe"
    case oceania = "Oceania"
}

enum StartOfWeek: String, Codable {
    case monday = "monday"
    case saturday = "saturday"
    case sunday = "sunday"
}

enum Status: String, Codable {
    case officiallyAssigned = "officially-assigned"
    case userAssigned = "user-assigned"
}

typealias Welcome = [CountriesViewModel]

