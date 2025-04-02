select w.id
from Weather w join Weather w_t
on w.id!=w_t.id
where datediff(w.recordDate,w_t.recordDate)=1 and w.temperature >w_t.temperature