-- 新農教會維修站：Supabase RLS 範例
-- 先確認資料表已存在，再到 Supabase SQL Editor 執行。
-- 公開網站可讀；登入的管理者可新增/修改/刪除。

alter table if exists public.site_settings enable row level security;
alter table if exists public.meetings enable row level security;
alter table if exists public.annual_events enable row level security;
alter table if exists public.albums enable row level security;
alter table if exists public.album_photos enable row level security;

drop policy if exists "public read site_settings" on public.site_settings;
create policy "public read site_settings" on public.site_settings for select using (true);
drop policy if exists "auth write site_settings" on public.site_settings;
create policy "auth write site_settings" on public.site_settings for all to authenticated using (true) with check (true);

drop policy if exists "public read meetings" on public.meetings;
create policy "public read meetings" on public.meetings for select using (true);
drop policy if exists "auth write meetings" on public.meetings;
create policy "auth write meetings" on public.meetings for all to authenticated using (true) with check (true);

drop policy if exists "public read annual_events" on public.annual_events;
create policy "public read annual_events" on public.annual_events for select using (true);
drop policy if exists "auth write annual_events" on public.annual_events;
create policy "auth write annual_events" on public.annual_events for all to authenticated using (true) with check (true);

drop policy if exists "public read albums" on public.albums;
create policy "public read albums" on public.albums for select using (true);
drop policy if exists "auth write albums" on public.albums;
create policy "auth write albums" on public.albums for all to authenticated using (true) with check (true);

drop policy if exists "public read album_photos" on public.album_photos;
create policy "public read album_photos" on public.album_photos for select using (true);
drop policy if exists "auth write album_photos" on public.album_photos;
create policy "auth write album_photos" on public.album_photos for all to authenticated using (true) with check (true);
