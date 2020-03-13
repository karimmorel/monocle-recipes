<?php

class eventcomments extends SectionEvent
{
    public $ROOTELEMENT = 'comments';

    public $eParamFILTERS = array(
        
    );

    public static function about()
    {
        return array(
            'name' => 'Comments',
            'author' => array(
                'name' => 'Karim MOREL',
                'website' => 'http://localhost:8888/monocle-recipes',
                'email' => 'karim-morel@outlook.fr'),
            'version' => 'Symphony 2.7.10',
            'release-date' => '2020-03-13T14:37:32+00:00',
            'trigger-condition' => 'action[comments]'
        );
    }

    public static function getSource()
    {
        return '11';
    }

    public static function allowEditorToParse()
    {
        return true;
    }

    public static function documentation()
    {
        return '
                <h3>Success and Failure XML Examples</h3>
                <p>When saved successfully, the following XML will be returned:</p>
                <pre class="XML"><code>&lt;comments result="success" type="create | edit">
    &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/comments></code></pre>
                <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned.</p>
                <pre class="XML"><code>&lt;comments result="error">
    &lt;message>Entry encountered errors when saving.&lt;/message>
    &lt;field-name type="invalid | missing" />
...&lt;/comments></code></pre>
                <h3>Example Front-end Form Markup</h3>
                <p>This is an example of the form markup you can use on your frontend:</p>
                <pre class="XML"><code>&lt;form method="post" action="{$current-url}/" enctype="multipart/form-data">
    &lt;input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
    &lt;label>Name
        &lt;input name="fields[name]" type="text" />
    &lt;/label>
    &lt;label>Email
        &lt;input name="fields[email]" type="text" />
    &lt;/label>
    &lt;label>Comment
        &lt;textarea name="fields[comment]" rows="15" cols="50">&lt;/textarea>
    &lt;/label>
    &lt;label>Recipe
        &lt;select name="fields[recipe]">
            &lt;option value="Vegetarian casserole">Vegetarian casserole&lt;/option>
        &lt;/select>
    &lt;/label>
    &lt;input name="action[comments]" type="submit" value="Submit" />
&lt;/form></code></pre>
                <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
                <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
                <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
                <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://localhost:8888/monocle-recipes/success/" /></code></pre>';
    }

    public function load()
    {
        if (isset($_POST['action']['comments'])) {
            return $this->__trigger();
        }
    }

}
