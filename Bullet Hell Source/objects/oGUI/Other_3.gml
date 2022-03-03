//cleaning up the particles
part_type_destroy(star);
part_type_destroy(cloud);
part_type_destroy(bulletRing);
part_type_destroy(explosion);

/******************************/

part_system_destroy(backgroundSystem);
part_system_destroy(bulletImpact);
part_system_destroy(deathSystem);