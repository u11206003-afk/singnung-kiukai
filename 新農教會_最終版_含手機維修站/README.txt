新農教會最終版（含手機版維修站）

檔案：
- index.html：正式網站
- admin.html：維修站（手機 / 平板 / 電腦響應式）
- setup_security.sql：若維修站登入後無法寫入資料，可在 Supabase SQL Editor 執行

部署時三個檔案請一起放在網站根目錄。
網站：/index.html
維修站：/admin.html

維修站使用與首頁相同的 Supabase 專案，管理：
1. 教會資訊
2. 聚會時間
3. 年度活動
4. 恩典足跡 / 相簿與照片

手機版：
- 單欄表單
- 44px 以上觸控按鈕
- Tabs 可左右滑動
- iPhone 輸入框不會自動放大
- 表格型內容自動改成單欄
