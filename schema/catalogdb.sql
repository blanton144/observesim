/*

catalogDB schema version 0.0.1

Created 2018 March 2 - C. Sayres

types of each column from fits file.

gaia source
('solution_id', dtype('>i8'))
('source_id', dtype('>i8'))
('random_index', dtype('>i8'))
('ref_epoch', dtype('>f8'))
('ra', dtype('>f8'))
('ra_error', dtype('>f8'))
('dec', dtype('>f8'))
('dec_error', dtype('>f8'))
('parallax', dtype('>f8'))
('parallax_error', dtype('>f8'))
('pmra', dtype('>f8'))
('pmra_error', dtype('>f8'))
('pmdec', dtype('>f8'))
('pmdec_error', dtype('>f8'))
('ra_dec_corr', dtype('>f4'))
('ra_parallax_corr', dtype('>f4'))
('ra_pmra_corr', dtype('>f4'))
('ra_pmdec_corr', dtype('>f4'))
('dec_parallax_corr', dtype('>f4'))
('dec_pmra_corr', dtype('>f4'))
('dec_pmdec_corr', dtype('>f4'))
('parallax_pmra_corr', dtype('>f4'))
('parallax_pmdec_corr', dtype('>f4'))
('pmra_pmdec_corr', dtype('>f4'))
('astrometric_n_obs_al', dtype('>i4'))
('astrometric_n_obs_ac', dtype('>i4'))
('astrometric_n_good_obs_al', dtype('>i4'))
('astrometric_n_good_obs_ac', dtype('>i4'))
('astrometric_n_bad_obs_al', dtype('>i4'))
('astrometric_n_bad_obs_ac', dtype('>i4'))
('astrometric_delta_q', dtype('>f4'))
('astrometric_excess_noise', dtype('>f8'))
('astrometric_excess_noise_sig', dtype('>f8'))
('astrometric_primary_flag', dtype('bool'))
('astrometric_relegation_factor', dtype('>f4'))
('astrometric_weight_al', dtype('>f4'))
('astrometric_weight_ac', dtype('>f4'))
('astrometric_priors_used', dtype('>i4'))
('matched_observations', dtype('>i2'))
('duplicated_source', dtype('bool'))
('scan_direction_strength_k1', dtype('>f4'))
('scan_direction_strength_k2', dtype('>f4'))
('scan_direction_strength_k3', dtype('>f4'))
('scan_direction_strength_k4', dtype('>f4'))
('scan_direction_mean_k1', dtype('>f4'))
('scan_direction_mean_k2', dtype('>f4'))
('scan_direction_mean_k3', dtype('>f4'))
('scan_direction_mean_k4', dtype('>f4'))
('phot_g_n_obs', dtype('>i4'))
('phot_g_mean_flux', dtype('>f8'))
('phot_g_mean_flux_error', dtype('>f8'))
('phot_g_mean_mag', dtype('>f8'))
('phot_variable_flag', dtype('S13'))
('l', dtype('>f8'))
('b', dtype('>f8'))
('ecl_lon', dtype('>f8'))
('ecl_lat', dtype('>f8'))

TGAS:
('hip', dtype('>i4'))
('tycho2_id', dtype('S11'))
('solution_id', dtype('>i8'))
('source_id', dtype('>i8'))
('random_index', dtype('>i8'))
('ref_epoch', dtype('>f8'))
('ra', dtype('>f8'))
('ra_error', dtype('>f8'))
('dec', dtype('>f8'))
('dec_error', dtype('>f8'))
('parallax', dtype('>f8'))
('parallax_error', dtype('>f8'))
('pmra', dtype('>f8'))
('pmra_error', dtype('>f8'))
('pmdec', dtype('>f8'))
('pmdec_error', dtype('>f8'))
('ra_dec_corr', dtype('>f4'))
('ra_parallax_corr', dtype('>f4'))
('ra_pmra_corr', dtype('>f4'))
('ra_pmdec_corr', dtype('>f4'))
('dec_parallax_corr', dtype('>f4'))
('dec_pmra_corr', dtype('>f4'))
('dec_pmdec_corr', dtype('>f4'))
('parallax_pmra_corr', dtype('>f4'))
('parallax_pmdec_corr', dtype('>f4'))
('pmra_pmdec_corr', dtype('>f4'))
('astrometric_n_obs_al', dtype('>i4'))
('astrometric_n_obs_ac', dtype('>i4'))
('astrometric_n_good_obs_al', dtype('>i4'))
('astrometric_n_good_obs_ac', dtype('>i4'))
('astrometric_n_bad_obs_al', dtype('>i4'))
('astrometric_n_bad_obs_ac', dtype('>i4'))
('astrometric_delta_q', dtype('>f4'))
('astrometric_excess_noise', dtype('>f8'))
('astrometric_excess_noise_sig', dtype('>f8'))
('astrometric_primary_flag', dtype('bool'))
('astrometric_relegation_factor', dtype('>f4'))
('astrometric_weight_al', dtype('>f4'))
('astrometric_weight_ac', dtype('>f4'))
('astrometric_priors_used', dtype('>i4'))
('matched_observations', dtype('>i2'))
('duplicated_source', dtype('bool'))
('scan_direction_strength_k1', dtype('>f4'))
('scan_direction_strength_k2', dtype('>f4'))
('scan_direction_strength_k3', dtype('>f4'))
('scan_direction_strength_k4', dtype('>f4'))
('scan_direction_mean_k1', dtype('>f4'))
('scan_direction_mean_k2', dtype('>f4'))
('scan_direction_mean_k3', dtype('>f4'))
('scan_direction_mean_k4', dtype('>f4'))
('phot_g_n_obs', dtype('>i4'))
('phot_g_mean_flux', dtype('>f8'))
('phot_g_mean_flux_error', dtype('>f8'))
('phot_g_mean_mag', dtype('>f8'))
('phot_variable_flag', dtype('S13'))
('l', dtype('>f8'))
('b', dtype('>f8'))
('ecl_lon', dtype('>f8'))
('ecl_lat', dtype('>f8'))

to run:
psql -f catalogdb.sql -h db.sdss.utah.edu -U sdssdb_admin -p 5432 sdss5db

drop schema catalogdb cascade;
*/


CREATE SCHEMA catalogdb;

SET search_path TO catalogdb;

CREATE TABLE catalogdb.gaia_dr1_source (
	pk bigserial PRIMARY KEY NOT NULL,
    solution_id BIGINT,
    source_id BIGINT,
    random_index BIGINT,
    ref_epoch DOUBLE PRECISION,
    ra DOUBLE PRECISION,
    ra_error DOUBLE PRECISION,
    dec DOUBLE PRECISION,
    dec_error DOUBLE PRECISION,
    parallax DOUBLE PRECISION,
    parallax_error DOUBLE PRECISION,
    pmra DOUBLE PRECISION,
    pmra_error DOUBLE PRECISION,
    pmdec DOUBLE PRECISION,
    pmdec_error DOUBLE PRECISION,
    ra_dec_corr REAL,
    ra_parallax_corr REAL,
    ra_pmra_corr REAL,
    ra_pmdec_corr REAL,
    dec_parallax_corr REAL,
    dec_pmra_corr REAL,
    dec_pmdec_corr REAL,
    parallax_pmra_corr REAL,
    parallax_pmdec_corr REAL,
    pmra_pmdec_corr REAL,
    astrometric_n_obs_al INTEGER,
    astrometric_n_obs_ac INTEGER,
    astrometric_n_good_obs_al INTEGER,
    astrometric_n_good_obs_ac INTEGER,
    astrometric_n_bad_obs_al INTEGER,
    astrometric_n_bad_obs_ac INTEGER,
    astrometric_delta_q REAL,
    astrometric_excess_noise DOUBLE PRECISION,
    astrometric_excess_noise_sig DOUBLE PRECISION,
    astrometric_primary_flag BOOLEAN,
    astrometric_relegation_factor REAL,
    astrometric_weight_al REAL,
    astrometric_weight_ac REAL,
    astrometric_priors_used INTEGER,
    matched_observations INTEGER,
    duplicated_source BOOLEAN,
    scan_direction_strength_k1 REAL,
    scan_direction_strength_k2 REAL,
    scan_direction_strength_k3 REAL,
    scan_direction_strength_k4 REAL,
    scan_direction_mean_k1 REAL,
    scan_direction_mean_k2 REAL,
    scan_direction_mean_k3 REAL,
    scan_direction_mean_k4 REAL,
    phot_g_n_obs INTEGER,
    phot_g_mean_flux DOUBLE PRECISION,
    phot_g_mean_flux_error DOUBLE PRECISION,
    phot_g_mean_mag DOUBLE PRECISION,
    phot_variable_flag TEXT,
    l DOUBLE PRECISION,
    b DOUBLE PRECISION,
    ecl_lon DOUBLE PRECISION,
    ecl_lat DOUBLE PRECISION);

CREATE TABLE catalogdb.gaia_dr1_tgas (
    pk bigserial PRIMARY KEY NOT NULL,
    hip INTEGER,
    tycho2_id TEXT,
    solution_id BIGINT,
    source_id BIGINT,
    random_index BIGINT,
    ref_epoch DOUBLE PRECISION,
    ra DOUBLE PRECISION,
    ra_error DOUBLE PRECISION,
    dec DOUBLE PRECISION,
    dec_error DOUBLE PRECISION,
    parallax DOUBLE PRECISION,
    parallax_error DOUBLE PRECISION,
    pmra DOUBLE PRECISION,
    pmra_error DOUBLE PRECISION,
    pmdec DOUBLE PRECISION,
    pmdec_error DOUBLE PRECISION,
    ra_dec_corr REAL,
    ra_parallax_corr REAL,
    ra_pmra_corr REAL,
    ra_pmdec_corr REAL,
    dec_parallax_corr REAL,
    dec_pmra_corr REAL,
    dec_pmdec_corr REAL,
    parallax_pmra_corr REAL,
    parallax_pmdec_corr REAL,
    pmra_pmdec_corr REAL,
    astrometric_n_obs_al INTEGER,
    astrometric_n_obs_ac INTEGER,
    astrometric_n_good_obs_al INTEGER,
    astrometric_n_good_obs_ac INTEGER,
    astrometric_n_bad_obs_al INTEGER,
    astrometric_n_bad_obs_ac INTEGER,
    astrometric_delta_q REAL,
    astrometric_excess_noise DOUBLE PRECISION,
    astrometric_excess_noise_sig DOUBLE PRECISION,
    astrometric_primary_flag BOOLEAN,
    astrometric_relegation_factor REAL,
    astrometric_weight_al REAL,
    astrometric_weight_ac REAL,
    astrometric_priors_used INTEGER,
    matched_observations INTEGER,
    duplicated_source BOOLEAN,
    scan_direction_strength_k1 REAL,
    scan_direction_strength_k2 REAL,
    scan_direction_strength_k3 REAL,
    scan_direction_strength_k4 REAL,
    scan_direction_mean_k1 REAL,
    scan_direction_mean_k2 REAL,
    scan_direction_mean_k3 REAL,
    scan_direction_mean_k4 REAL,
    phot_g_n_obs INTEGER,
    phot_g_mean_flux DOUBLE PRECISION,
    phot_g_mean_flux_error DOUBLE PRECISION,
    phot_g_mean_mag DOUBLE PRECISION,
    phot_variable_flag TEXT,
    l DOUBLE PRECISION,
    b DOUBLE PRECISION,
    ecl_lon DOUBLE PRECISION,
    ecl_lat DOUBLE PRECISION);


-- Indices
CREATE INDEX CONCURRENTLY gaia_dr1_source_ra_index ON catalogdb.gaia_dr1_source using BTREE(ra);
CREATE INDEX CONCURRENTLY gaia_dr1_source_dec_index ON catalogdb.gaia_dr1_source using BTREE(dec);
CREATE INDEX CONCURRENTLY gaia_dr1_source_l_index ON catalogdb.gaia_dr1_source using BTREE(l);
CREATE INDEX CONCURRENTLY gaia_dr1_source_b_index ON catalogdb.gaia_dr1_source using BTREE(b);
CREATE INDEX CONCURRENTLY gaia_dr1_source_ecl_lon_index ON catalogdb.gaia_dr1_source using BTREE(ecl_lon);
CREATE INDEX CONCURRENTLY gaia_dr1_source_ecl_lat_index ON catalogdb.gaia_dr1_source using BTREE(ecl_lat);
CREATE INDEX CONCURRENTLY gaia_dr1_source_phot_g_mean_flux_index ON catalogdb.gaia_dr1_source using BTREE(phot_g_mean_flux);
CREATE INDEX CONCURRENTLY gaia_dr1_source_phot_g_mean_mag_index ON catalogdb.gaia_dr1_source using BTREE(phot_g_mean_mag);
CREATE INDEX CONCURRENTLY gaia_dr1_source_solution_id_index ON catalogdb.gaia_dr1_source using BTREE(solution_id);
CREATE INDEX CONCURRENTLY gaia_dr1_source_source_id_index ON catalogdb.gaia_dr1_source using BTREE(source_id);

CREATE INDEX CONCURRENTLY gaia_dr1_tgas_ra_index ON catalogdb.gaia_dr1_tgas using BTREE(ra);
CREATE INDEX CONCURRENTLY gaia_dr1_tgas_dec_index ON catalogdb.gaia_dr1_tgas using BTREE(dec);
CREATE INDEX CONCURRENTLY gaia_dr1_tgas_l_index ON catalogdb.gaia_dr1_tgas using BTREE(l);
CREATE INDEX CONCURRENTLY gaia_dr1_tgas_b_index ON catalogdb.gaia_dr1_tgas using BTREE(b);
CREATE INDEX CONCURRENTLY gaia_dr1_tgas_ecl_lon_index ON catalogdb.gaia_dr1_tgas using BTREE(ecl_lon);
CREATE INDEX CONCURRENTLY gaia_dr1_tgas_ecl_lat_index ON catalogdb.gaia_dr1_tgas using BTREE(ecl_lat);
CREATE INDEX CONCURRENTLY gaia_dr1_tgas_phot_g_mean_flux_index ON catalogdb.gaia_dr1_tgas using BTREE(phot_g_mean_flux);
CREATE INDEX CONCURRENTLY gaia_dr1_tgas_phot_g_mean_mag_index ON catalogdb.gaia_dr1_tgas using BTREE(phot_g_mean_mag);
CREATE INDEX CONCURRENTLY gaia_dr1_tgas_solution_id_index ON catalogdb.gaia_dr1_tgas using BTREE(solution_id);
CREATE INDEX CONCURRENTLY gaia_dr1_tgas_source_id_index ON catalogdb.gaia_dr1_tgas using BTREE(source_id);
CREATE INDEX CONCURRENTLY gaia_dr1_tgas_hip_index ON catalogdb.gaia_dr1_tgas using BTREE(hip);
CREATE INDEX CONCURRENTLY gaia_dr1_tgas_tycho2_id_index ON catalogdb.gaia_dr1_tgas using BTREE(tycho2_id);
CREATE INDEX CONCURRENTLY gaia_dr1_tgas_duplicated_source_index ON catalogdb.gaia_dr1_tgas using BTREE(duplicated_source);

