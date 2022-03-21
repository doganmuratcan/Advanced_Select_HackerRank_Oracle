SELECT N, CASE WHEN P IS NULL THEN 'Root' 
WHEN(SELECT COUNT(*) FROM BST 
     WHERE P = A.N) > 0 THEN 'Inner'
     ELSE 'Leaf'
     END FROM BST A ORDER BY N; --- binary tree