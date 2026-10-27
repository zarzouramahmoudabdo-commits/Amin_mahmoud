create table orders(
  id uuid primary key default gen_random_uuid(),
  num bigint generated always as identity unique,
  customer text, phone text, device text, issue text,
  status text default 'received', note text, price numeric,
  created_at timestamptz default now(), updated_at timestamptz default now());
alter table orders enable row level security;
create policy "admin_all" on orders for all to authenticated using (true) with check (true);
create function track_order(n bigint)
returns table(num bigint, device text, status text, note text, price numeric, updated_at timestamptz)
language sql security definer set search_path=public as
$$ select num,device,status,note,price,updated_at from orders where num=n $$;
grant execute on function track_order(bigint) to anon;
