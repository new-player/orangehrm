<?php

/**
 * BaseJobVacancyAttachment
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property int                   $id                            Type: integer(13), primary key
 * @property int                   $vacancyId                     Type: integer(13)
 * @property string                $fileName                      Type: string(255)
 * @property string                $fileType                      Type: string(255)
 * @property int                   $fileSize                      Type: integer(30)
 * @property object                $fileContent                   Type: blob(2147483647)
 * @property int                   $attachmentType                Type: integer(4)
 * @property                       $comment                       Type: 
 * @property JobVacancy            $JobVacancy                    
 *  
 * @method int                     getId()                        Type: integer(13), primary key
 * @method int                     getVacancyid()                 Type: integer(13)
 * @method string                  getFilename()                  Type: string(255)
 * @method string                  getFiletype()                  Type: string(255)
 * @method int                     getFilesize()                  Type: integer(30)
 * @method object                  getFilecontent()               Type: blob(2147483647)
 * @method int                     getAttachmenttype()            Type: integer(4)
 * @method                         getComment()                   Type: 
 * @method JobVacancy              getJobVacancy()                
 *  
 * @method JobVacancyAttachment    setId(int $val)                Type: integer(13), primary key
 * @method JobVacancyAttachment    setVacancyid(int $val)         Type: integer(13)
 * @method JobVacancyAttachment    setFilename(string $val)       Type: string(255)
 * @method JobVacancyAttachment    setFiletype(string $val)       Type: string(255)
 * @method JobVacancyAttachment    setFilesize(int $val)          Type: integer(30)
 * @method JobVacancyAttachment    setFilecontent(object $val)    Type: blob(2147483647)
 * @method JobVacancyAttachment    setAttachmenttype(int $val)    Type: integer(4)
 * @method JobVacancyAttachment    setComment( $val)              Type: 
 * @method JobVacancyAttachment    setJobVacancy(JobVacancy $val) 
 *  
 * @package    orangehrm
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseJobVacancyAttachment extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('ohrm_job_vacancy_attachment');
        $this->hasColumn('id', 'integer', 13, array(
             'type' => 'integer',
             'primary' => true,
             'length' => 13,
             ));
        $this->hasColumn('vacancy_id as vacancyId', 'integer', 13, array(
             'type' => 'integer',
             'length' => 13,
             ));
        $this->hasColumn('file_name as fileName', 'string', 255, array(
             'type' => 'string',
             'length' => 255,
             ));
        $this->hasColumn('file_type as fileType', 'string', 255, array(
             'type' => 'string',
             'length' => 255,
             ));
        $this->hasColumn('file_size as fileSize', 'integer', 30, array(
             'type' => 'integer',
             'length' => 30,
             ));
        $this->hasColumn('file_content as fileContent', 'blob', 2147483647, array(
             'type' => 'blob',
             'length' => 2147483647,
             ));
        $this->hasColumn('attachment_type as attachmentType', 'integer', 4, array(
             'type' => 'integer',
             'length' => 4,
             ));
        $this->hasColumn('comment', '', null);
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('JobVacancy', array(
             'local' => 'id',
             'foreign' => 'attachmentFileId'));
    }
}