//
//  IMiniAppData.swift
//  MOILibrary
//
//  Created by MacBook Pro on 30/07/1446 AH.


import Foundation
import CoreLocation
import AVFoundation
import LocalAuthentication


public protocol IAbsherHelper {

    // User data section
    func getUserNationalID() -> AbsherResponse<String>
    func getUserFullNameAr() -> AbsherResponse<String>
    func getUserFullNameEn() -> AbsherResponse<String>
    func getUserFirstNameAr() -> AbsherResponse<String>
    func getUserFatherNameAr() -> AbsherResponse<String>
    func getUserGrandFatherNameAr() -> AbsherResponse<String>
    func getUserLastNameAr() -> AbsherResponse<String>
    func getUserFirstNameEn() -> AbsherResponse<String>
    func getUserFatherNameEn() -> AbsherResponse<String>
    func getUserGrandFatherNameEn() -> AbsherResponse<String>
    func getUserLastNameEn() -> AbsherResponse<String>
    func getUserNationality() -> AbsherResponse<String>
    func getUserGender() -> AbsherResponse<String>
    func getUserBloodType() -> AbsherResponse<String>
    func getUserMaritalStatus() -> AbsherResponse<String>
    func getUserMobile() -> AbsherResponse<String>
    func getUserWorkPhone() -> AbsherResponse<String>
    func getUserEmail() -> AbsherResponse<String>
    func getUserBirthDate() -> AbsherResponse<String>
    func getUserBirthDateHijri() -> AbsherResponse<String>
    func getUserPlaceOfBirth() -> AbsherResponse<String>
    func getUserSector() -> AbsherResponse<String>
    func getUserDepartment() -> AbsherResponse<String>

    // Get app data
    func getUserToken() -> AbsherResponse<String>
    func getCurrentTheme() -> AbsherResponse<String>
    func getCurrentLanguage() -> AbsherResponse<String>
    func getUserProfileImage() -> AbsherResponse<String>

    // Read and write local storage
    func saveStringToLocal(key: String, value: String) -> AbsherResponse<Bool>
    func readStringFromLocal(key: String) -> AbsherResponse<String>
    func saveBoolToLocal(key: String, value: Bool) -> AbsherResponse<Bool>
    func readBoolFromLocal(key: String) -> AbsherResponse<String>
    func saveIntToLocal(key: String, value: Int) -> AbsherResponse<Bool>
    func readIntFromLocal(key: String) -> AbsherResponse<String>
    func deleteDataFromLocal(key: String) -> AbsherResponse<Bool>

    // Native features
    func getImageFromCamera() -> AbsherResponse<String>
    func getImageFromGallery() -> AbsherResponse<String>
    func getImagesFromGallery() -> AbsherResponse<[String]>
    func getVideoFromCamera() -> AbsherResponse<String>
    func getVideoFromGallery() -> AbsherResponse<String>
    func getVideosFromGallery() -> AbsherResponse<String>
    func getFile() -> AbsherResponse<String>
    func getPreciseLocation() -> AbsherResponse<String>
    func authenticateBiometric() -> AbsherResponse<Bool>
    func shareText(_ shareText: String) -> AbsherResponse<Bool>
    func shareMedia(filePath: String, message: String?) -> AbsherResponse<Bool>

    func getServiceTitleAr() -> AbsherResponse<String>
    func getServiceTitleEn() -> AbsherResponse<String>
    func getIsLocationAuthenticated () -> AbsherResponse<Bool>
    func getLocation () -> AbsherResponse<AbsherPosition>

    func closeApp(data: [String: Any]?)
 
}

