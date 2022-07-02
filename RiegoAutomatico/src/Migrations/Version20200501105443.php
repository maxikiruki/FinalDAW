<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200501105443 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE history CHANGE sector_id sector_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE schedule CHANGE description description VARCHAR(255) DEFAULT NULL, CHANGE start_time_morning start_time_morning TIME DEFAULT NULL, CHANGE end_time_morning end_time_morning TIME DEFAULT NULL, CHANGE start_time_afternoon start_time_afternoon TIME DEFAULT NULL, CHANGE end_time_afternoon end_time_afternoon TIME DEFAULT NULL');
        $this->addSql('ALTER TABLE sector ADD last_schedule_id INT DEFAULT NULL, CHANGE owner_id owner_id INT DEFAULT NULL, CHANGE schedule_id schedule_id INT DEFAULT NULL, CHANGE valve valve VARCHAR(255) DEFAULT NULL, CHANGE humedity humedity VARCHAR(255) DEFAULT NULL, CHANGE flowmeter flowmeter VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE sector ADD CONSTRAINT FK_4BA3D9E8E43DBDD9 FOREIGN KEY (last_schedule_id) REFERENCES schedule (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_4BA3D9E8E43DBDD9 ON sector (last_schedule_id)');
        $this->addSql('ALTER TABLE user CHANGE roles roles JSON NOT NULL, CHANGE phone phone INT DEFAULT NULL, CHANGE email email VARCHAR(255) DEFAULT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE history CHANGE sector_id sector_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE schedule CHANGE description description VARCHAR(255) CHARACTER SET utf8mb4 DEFAULT \'NULL\' COLLATE `utf8mb4_unicode_ci`, CHANGE start_time_morning start_time_morning TIME DEFAULT \'NULL\', CHANGE end_time_morning end_time_morning TIME DEFAULT \'NULL\', CHANGE start_time_afternoon start_time_afternoon TIME DEFAULT \'NULL\', CHANGE end_time_afternoon end_time_afternoon TIME DEFAULT \'NULL\'');
        $this->addSql('ALTER TABLE sector DROP FOREIGN KEY FK_4BA3D9E8E43DBDD9');
        $this->addSql('DROP INDEX UNIQ_4BA3D9E8E43DBDD9 ON sector');
        $this->addSql('ALTER TABLE sector DROP last_schedule_id, CHANGE owner_id owner_id INT DEFAULT NULL, CHANGE schedule_id schedule_id INT DEFAULT NULL, CHANGE valve valve VARCHAR(255) CHARACTER SET utf8mb4 DEFAULT \'NULL\' COLLATE `utf8mb4_unicode_ci`, CHANGE humedity humedity VARCHAR(255) CHARACTER SET utf8mb4 DEFAULT \'NULL\' COLLATE `utf8mb4_unicode_ci`, CHANGE flowmeter flowmeter VARCHAR(255) CHARACTER SET utf8mb4 DEFAULT \'NULL\' COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE user CHANGE roles roles LONGTEXT CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_bin`, CHANGE phone phone INT DEFAULT NULL, CHANGE email email VARCHAR(255) CHARACTER SET utf8mb4 DEFAULT \'NULL\' COLLATE `utf8mb4_unicode_ci`');
    }
}
