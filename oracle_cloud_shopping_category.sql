select
         prct.CATEGORY_NAME PARENT_CATEGORY_NAME_TR,
         prce.CATEGORY_NAME PARENT_CATEGORY_NAME_US,
         pch.PURCHASING_CAT_FLAG                   ,
         CASE
                  WHEN pch.PURCHASING_CAT_FLAG = 'Y'
                           THEN
                           (
                                  select ect.CATEGORY_NAME
                                  FROM   EGP_CATEGORIES_TL ect
                                  where  pch.child_category_id = ect.category_id
                                         AND ect.language      = 'TR'
                           )
                           ELSE
                            ( 	  select prct.CATEGORY_NAME
                                  FROM   POR_BROWSE_CATEGORIES_TL prct
                                  where  pch.child_category_id = prct.category_id
                                         AND prct.language     = 'TR'
							)
         END CHILD_CATEGORY_NAME_TR,
         CASE
                  WHEN pch.PURCHASING_CAT_FLAG = 'Y'
                           THEN
                           (      select ect.CATEGORY_NAME
                                  FROM   EGP_CATEGORIES_TL ect
                                  where  pch.child_category_id = ect.category_id
                                         AND ect.language      = 'US'
                           )
                           ELSE
                           (      select prct.CATEGORY_NAME
                                  FROM   POR_BROWSE_CATEGORIES_TL prct
                                  where  pch.child_category_id = prct.category_id
                                         AND prct.language     = 'US'
                           )
         END CHILD_CATEGORY_NAME_US
from
         (
                select
                       child_category_id ,
                       parent_category_id,
                       PURCHASING_CAT_FLAG
                from
                       POR_BROWSE_TREES pbt START WITH parent_category_id = 0
                       CONNECT BY PRIOR child_category_id                 = parent_category_id
         )
                                  pch ,
         POR_BROWSE_CATEGORIES_B  prc ,
         POR_BROWSE_CATEGORIES_TL prct,
         POR_BROWSE_CATEGORIES_TL prce
where
         1                          =1
         AND pch.parent_category_id = prc.category_id
         AND prc.TYPE               = 'SHOPPING'
         AND prc.CATEGORY_ID        = prct.CATEGORY_ID
         AND prct.language          = 'TR'
         AND prc.CATEGORY_ID        = prce.CATEGORY_ID
         AND prce.language          = 'US'
ORDER BY
         parent_category_id
