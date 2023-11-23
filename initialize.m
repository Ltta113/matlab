function [path_hl, path_kt, folders_hl, folders_kt, files, N_FFTs] = initialize()

    path_hl = "E:\Workplace\Subjects_3\XL_Tin_Hieu_So\BT2\NguyenAmHuanLuyen-16k";
    path_kt = "E:\Workplace\Subjects_3\XL_Tin_Hieu_So\BT2\NguyenAmKiemThu-16k";
    folders_kt = ["01MDA", "02FVA", "03MAB", "04MHB", "05MVB", "06FTB", "07FTC","08MLD", "09MPD", "10MSD", "11MVD", "12FTD", "14FHH", "15MMH","16FTH", "17MTH", "18MNK", "19MXK", "20MVK", "21MTL", "22MHL"];
    folders_hl = ["23MTL", "24FTL", "25MLM", "27MCM", "28MVN", "29MHN", "30FTN","32MTP", "33MHP", "34MQP", "35MMQ", "36MAQ", "37MDS", "38MDS","39MTS", "40MHS", "41MVS", "42FQT", "43MNT", "44MTT", "45MDV"];
    files = ["a.wav", "e.wav", "i.wav", "o.wav", "u.wav"];
    
    N_FFTs = [512, 1024, 2048];
end