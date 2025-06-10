with
    source_employees as (
        select *
        from {{source('erp','employees')}}  
    )

    , renamed as (
        select
            cast(ID as int) as employee_pk
            , cast(REPORTSTO as varchar) as manager_fk
            , FIRSTNAME || ' ' || LASTNAME as employee_name
            , cast(TITLE as varchar) as employee_title
            , cast(BIRTHDATE as date) as employee_birth_date
            , cast(HIREDATE as date) as employee_hire_date
            , cast(CITY as varchar) as employee_city
            , cast(REGION as varchar) as employee_region
            , cast(COUNTRY as varchar) as employee_country
            --, cast(TITLEOFCOURTESY as varchar) as employee_
            --, cast(ADDRESS as varchar) as employee_
            --, cast(POSTALCODE as varchar) as employee_
            --, cast(HOMEPHONE as varchar) as employee_
            --, cast(EXTENSION as varchar) as employee_
            --, cast(PHOTO
            --, cast(NOTES as varchar) as employee_
            --, cast(PHOTOPATH as varchar) as employee_
            from source_employees     
    )
select *
from renamed    