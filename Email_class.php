<?php

class Email
{
    private $full_name;
    private $from;
    private $subject;
    private $body;
    private $headers;
    private $recipients;
    
    /*
     * Constructor
     */
    function Email ()
    {
        
    }

    public function getFullName()
    {
        if(!isset($this->full_name)){
            return false;
        }
        return $this->full_name;
    }

    public function setFullName($full_name)
    {
        $this->full_name = $full_name;
    }

    public function getFrom()
    {
        return $this->from;
    }

    public function setFrom($from)
    {       
        $this->from = $from;
    }

    public function getSubject()
    {
        return $this->subject;
    }

    public function setSubject($subject)
    {
        $this->subject = $subject;
    }

    public function getBody()
    {
        return $this->body;
    }

    public function setBody($body)
    {
        $this->body = $body;
    }

    public function getHeaders()
    {
        return $this->headers;
    }

    private function setHeaders()
    {
        if(isset($this->from)) {
            $mail_headers = "From: {$this->getFrom()}" . "\r\n";
            $mail_headers .="Content-Type: text/plain; charset=UTF-8" . "\r\n";
            $this->headers = $mail_headers;
        }
    }

    public function getRecipients()
    {
        return $this->recipients;
    }

    public function setRecipients($recipients)
    {      
        if(!is_array($recipients)) {
            return false;
        }
        $this->recipients = $recipients;
    }

    public function sendEmail()
    {
        if ((count($this->getRecipients()) > 0)) {
            $this->setHeaders();
            email_users_id($this->getRecipients(), $this->getSubject(), $this->getBody(), $this->getHeaders());
        }
        return true;
    }

}
