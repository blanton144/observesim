/*

schema for 2mass gaia xmatch:

http://gea.esac.esa.int/archive/documentation/GDR2/Gaia_archive/chap_datamodel/sec_dm_crossmatches/ssec_dm_tmass_best_neighbour.html

*/

CREATE TABLE catalogdb.gaiadr2_tmass_best_neighbour(
    tmass_oid bigint,
    number_of_neighbours integer,
    number_of_mates integer,
    best_neighbour_multiplicity integer,
    source_id bigint,
    original_ext_source_id text,
    angular_distance double precision,
    gaia_astrometric_params integer
);


\copy catalogdb.gaiadr2_tmass_best_neighbour FROM '/uufs/chpc.utah.edu/common/home/sdss/sdsswork/gaia/dr2/crossmatch/csv_catalogs/tmass_best_neighbour.csv' WITH CSV HEADER;

alter table catalogdb.gaiadr2_tmass_best_neighbour add primary key(source_id);

CREATE INDEX CONCURRENTLY gaiadr2_tmass_best_neighbour_tmass_oid_index ON catalogdb.gaiadr2_tmass_best_neighbour using BTREE (tmass_oid);