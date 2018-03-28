## Module AWS.TranscribeService.Requests

#### `getTranscriptionJob`

``` purescript
getTranscriptionJob :: forall eff. Service -> GetTranscriptionJobRequest -> Aff (exception :: EXCEPTION | eff) GetTranscriptionJobResponse
```

<p>Returns information about a transcription job. To see the status of the job, check the <code>Status</code> field. If the status is <code>COMPLETE</code>, the job is finished and you can find the results at the location specified in the <code>TranscriptionFileUri</code> field.</p>

#### `listTranscriptionJobs`

``` purescript
listTranscriptionJobs :: forall eff. Service -> ListTranscriptionJobsRequest -> Aff (exception :: EXCEPTION | eff) ListTranscriptionJobsResponse
```

<p>Lists transcription jobs with the specified status.</p>

#### `startTranscriptionJob`

``` purescript
startTranscriptionJob :: forall eff. Service -> StartTranscriptionJobRequest -> Aff (exception :: EXCEPTION | eff) StartTranscriptionJobResponse
```

<p>Starts an asynchronous job to transcribe speech to text.</p>


