# create-input-file-text12
# Mariko Ohtsuka
# Created date 2021/04/20
# 関数定義
WriteCsvForText12 <- function(output_df, output_path, csv_name) {
  write.csv(output_df, paste0(output_path, "/", csv_name), row.names=F, quote=F)
}
# CSVファイル出力先を指定
output_path <- "/Users/admin/Documents/GitHub/r-training/output"
# 症例
case_id <- c(1:5)
case_age <- c(10, 25, 30, 12, 50)
case_sex_code <- c(1, 2, 2, 1, 1)
case_sex <- ifelse(case_sex_code == 1, "男性", "女性")
case_disease <- c(2, 3, 4, 1, 1)
case <- data.frame(case_id, case_age, case_sex, case_disease)
colnames(case) <- c("症例番号", "年齢", "性別", "疾患コード")
# 検査
test_id <- c(1, 2, 3, 2, 3)
test_type_code <- c(1, 1, 1, 2, 2)
test_type <- ifelse(test_type_code == 1, "採血", "尿")
test_result_code <- c(1, 1, 2, 1, 1)
test_result <- ifelse(test_result_code == 1, "可能", "不可")
test_date <- c("2015/4/1", "2015/9/3", "2015/10/25", "2015/9/3", "2015/10/25")
test <- data.frame(test_id, test_type, test_result, test_date)
colnames(test) <- c("症例番号", "検査種類", "結果", "採血日")
# 疾患
disease_code <- c(1:5)
disease_name <- c("下痢", "発熱", "発疹", "頭痛", "骨折")
disease <- data.frame(disease_code, disease_name)
colnames(disease) <- c("疾患コード", "疾患")
# CSVを出力
WriteCsvForText12(case, output_path, "症例.csv")
WriteCsvForText12(test, output_path, "検査.csv")
WriteCsvForText12(disease, output_path, "疾患.csv")
