select *
from ga_general_nov2010;

select office, count(*) as cnt
from ga_general_nov2010
group by office;

----------------------------------------------
-- US Senate
----------------------------------------------
select *
from ga_general_nov2010
where office = 'U.S. Senate';

update ga_general_nov2010
    set candidate = 'Johnny Isakson',
        party = 'Republican',
        office = 'US Senate'
where office = 'U.S. Senate'
    and candidate = 'Isakson';

update ga_general_nov2010
    set candidate = 'Michael (Mike) Thurmond',
        party = 'Democrat',
        office = 'US Senate'
where office = 'U.S. Senate'
    and candidate = 'Thurmond';

update ga_general_nov2010
    set candidate = 'Chuck Donovan',
        party = 'Libertarian',
        office = 'US Senate'
where office = 'U.S. Senate'
    and candidate = 'Donovan';

update ga_general_nov2010
    set candidate = 'Steve Davis',
        party = 'Write-In',
        office = 'US Senate'
where office = 'U.S. Senate'
    and candidate = 'Davis';

update ga_general_nov2010
    set candidate = 'Raymond Beckworth',
        party = 'Write-In',
        office = 'US Senate'
where office = 'U.S. Senate'
    and candidate = 'Beckworth';

update ga_general_nov2010
    set candidate = 'Brian Russell Brown',
        party = 'Write-In',
        office = 'US Senate'
where office = 'U.S. Senate'
    and candidate = 'Brown';

-- Check the vote numbers...
select candidate, party, sum(votes) as votes
from ga_general_nov2010
where office = 'US Senate'
group by candidate, party
order by votes desc;

-- Final Output...
select county, office, district, party, candidate, votes
from ga_general_nov2010
where office = 'US Senate'
order by district, candidate, county;

----------------------------------------------
-- Governor
----------------------------------------------
select *
from ga_general_nov2010
where office = 'Governor';

update ga_general_nov2010
    set candidate = 'Nathan Deal',
        party = 'Republican'
where office = 'Governor'
    and candidate = 'Deal';

update ga_general_nov2010
    set candidate = 'Roy E. Barnes',
        party = 'Democrat'
where office = 'Governor'
    and candidate = 'Barnes';

update ga_general_nov2010
    set candidate = 'John H. Monds',
        party = 'Libertarian'
where office = 'Governor'
    and candidate = 'Monds';

update ga_general_nov2010
    set candidate = 'David C. Byrne',
        party = 'Write-In'
where office = 'Governor'
    and candidate = 'Byrne';

update ga_general_nov2010
    set candidate = 'Neal Horsley',
        party = 'Write-In'
where office = 'Governor'
    and candidate = 'Horsley';

-- Check the vote numbers...
select candidate, party, sum(votes) as votes
from ga_general_nov2010
where office = 'Governor'
group by candidate, party
order by votes desc;

-- Final Output...
select county, office, district, party, candidate, votes
from ga_general_nov2010
where office = 'Governor'
order by district, candidate, county;

----------------------------------------------
-- Lieutenant Governor
----------------------------------------------
select *
from ga_general_nov2010
where office = 'Lieutenant Governor';

update ga_general_nov2010
    set candidate = 'L.S. Casey Cagle',
        party = 'Republican'
where office = 'Lieutenant Governor'
    and candidate = 'Cagle';

update ga_general_nov2010
    set candidate = 'Carol Porter',
        party = 'Democrat'
where office = 'Lieutenant Governor'
    and candidate = 'Porter';

update ga_general_nov2010
    set candidate = 'Dan Barber',
        party = 'Libertarian'
where office = 'Lieutenant Governor'
    and candidate = 'Barber';

-- Check the vote numbers...
select candidate, party, sum(votes) as votes
from ga_general_nov2010
where office = 'Lieutenant Governor'
group by candidate, party
order by votes desc;

-- Final Output...
select county, office, district, party, candidate, votes
from ga_general_nov2010
where office = 'Lieutenant Governor'
order by district, candidate, county;

----------------------------------------------
-- Secretary of State
----------------------------------------------
select *
from ga_general_nov2010
where office = 'Secretary of State';

update ga_general_nov2010
    set candidate = 'Brian Kemp',
        party = 'Republican'
where office = 'Secretary of State'
    and candidate = 'Kemp';

update ga_general_nov2010
    set candidate = 'Georganna Sinkfield',
        party = 'Democrat'
where office = 'Secretary of State'
    and candidate = 'Sinkfield';

update ga_general_nov2010
    set candidate = 'David Chastain',
        party = 'Libertarian'
where office = 'Secretary of State'
    and candidate = 'Chastain';

-- Check the vote numbers...
select candidate, party, sum(votes) as votes
from ga_general_nov2010
where office = 'Secretary of State'
group by candidate, party
order by votes desc;

-- Final Output...
select county, office, district, party, candidate, votes
from ga_general_nov2010
where office = 'Secretary of State'
order by district, candidate, county;

----------------------------------------------
-- Attorney General
----------------------------------------------
select *
from ga_general_nov2010
where office = 'Attorney General';
