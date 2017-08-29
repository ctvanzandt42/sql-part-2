create table todo (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    details TEXT NULL,
    priority INTEGER NOT NULL DEFAULT 1,
    created_at TIMESTAMP WITHOUT TIME ZONE NULL,
    completed_at TIMESTAMP WITHOUT TIME ZONE NULL
);

insert into todo (title, priority, created_at, completed_at)
values ('Run for your life from Shia Labeouf', 1, '2017-08-28 13:23:35', '2017-08-28 14:41:10'),
('Wrestling a knife from Shia Labeouf', 2, '2017-08-29 21:23:05', null),
('Strangling superstar Shia Labeouf', 3, '2017-09-01 12:29:13', null),
('Stab it in his kidney', 4, '2017-09-01 12:20:19', null),
('Stop blood oozing from stump leg', 5, '2017-09-01 12:30:39', null);

select * 
from todo 
where completed_at IS NULL;

select * 
from todo 
where priority > 1;

update todo 
SET completed_at = '2017-09-01 01:13:01' 
WHERE id = 2; 

delete 
from todo 
where completed_at IS NOT NULL;

--Write INSERT statements to insert 20 todos into the todos table, with a combination of priorities, created times, and completed times, with not all having a completed time.
INSERT INTO todo (title, priority, created_at, completed_at)
VALUES ('Youre walking in the woods', 2, '2017-08-28 13:23:35', null),
('Theres no one around and your phone is dead.', 4, '2017-08-24 13:43:35', '2017-08-28 10:21:10'),
('Out of the corner of your eye, you spot him.', 1, '2017-08-28 13:23:59', '2017-08-28 14:46:11'),
('-whispers-Shia Labeouf', 2, '2017-08-24 13:23:35', null),
('Hes following you, about 30 feet back.', 5, '2018-05-28 01:41:35', null),
('He gets on all fours and breaks into a sprint', 12, '2013-08-28 13:23:50', null),
('HES GAINING ON YOU', 3, '2017-11-28 02:32:35', '2017-12-25 00:00:01'),
('-louder-Shia Labeouf', 2, '2017-08-31 11:23:55', null),
('Youre looking for your car, but youre all turned around', 4, '2016-12-28 02:35:35', '2017-08-28 14:41:10'),
('Hes almost upon you now, and you can see theres blood on his face.', 1, '2017-08-28 13:23:35', null),
('My God, theres blood EVERYWHERE', 1, '2017-08-28 13:23:35', '2017-08-28 14:41:10'),
('WAIT! He isnt dead!', 3, '2014-10-28 04:10:35', null),
('Theres no one around and your phone is dead.', 4, '2017-08-24 13:43:35', '2017-08-28 10:21:10'),
('Out of the corner of your eye, you spot him.', 1, '2017-08-28 13:23:59', '2017-08-28 14:46:11'),
('-whispers-Shia Labeouf', 2, '2017-08-24 13:23:35', null),
('Hes following you, about 30 feet back.', 5, '2018-05-28 01:41:35', null),
('He gets on all fours and breaks into a sprint', 12, '2013-08-28 13:23:50', null),
('HES GAINING ON YOU', 3, '2017-11-28 02:32:35', '2017-12-23 23:00:31'),
('-louder-Shia Labeouf', 2, '2017-08-31 11:23:55', null),
('Youre looking for your car, but youre all turned around', 4, '2016-12-28 02:35:35', '2017-08-28 14:41:10');

--Write a SELECT statement to find all incomplete todos with priority 3.
SELECT *
FROM todo
WHERE completed_at IS NULL
AND priority = 3;

--Write a SELECT statement to find the number of incomplete todos by priority.
SELECT COUNT(title), priority
FROM todo
GROUP BY priority;

--Write a SELECT statement to find the number of todos by priority created in the last 30 days.
SELECT COUNT(title), priority
FROM todo
WHERE created_at > '2017-07-29 00:00:01' 
AND created_at < '2017-08-29 23:59:59'
GROUP BY priority;

--Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first.
SELECT title, MIN(created_at)
FROM todo 
WHERE completed_at is null
AND priority = 1
GROUP BY title;


