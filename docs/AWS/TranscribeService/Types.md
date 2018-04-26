## Module AWS.TranscribeService.Types

#### `options`

``` purescript
options :: Options
```

#### `BadRequestException`

``` purescript
newtype BadRequestException
  = BadRequestException { "Message" :: Maybe (FailureReason) }
```

<p>There is a problem with one of the input fields. Check the S3 bucket name, make sure that the job name is not a duplicate, and confirm that you are using the correct file format. Then resend your request.</p>

##### Instances
``` purescript
Newtype BadRequestException _
Generic BadRequestException _
Show BadRequestException
Decode BadRequestException
Encode BadRequestException
```

#### `newBadRequestException`

``` purescript
newBadRequestException :: BadRequestException
```

Constructs BadRequestException from required parameters

#### `newBadRequestException'`

``` purescript
newBadRequestException' :: ({ "Message" :: Maybe (FailureReason) } -> { "Message" :: Maybe (FailureReason) }) -> BadRequestException
```

Constructs BadRequestException's fields from required parameters

#### `ConflictException`

``` purescript
newtype ConflictException
  = ConflictException { "Message" :: Maybe (String) }
```

<p>The <code>JobName</code> field is a duplicate of a previously entered job name. Resend your request with a different name.</p>

##### Instances
``` purescript
Newtype ConflictException _
Generic ConflictException _
Show ConflictException
Decode ConflictException
Encode ConflictException
```

#### `newConflictException`

``` purescript
newConflictException :: ConflictException
```

Constructs ConflictException from required parameters

#### `newConflictException'`

``` purescript
newConflictException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> ConflictException
```

Constructs ConflictException's fields from required parameters

#### `DateTime`

``` purescript
newtype DateTime
  = DateTime Timestamp
```

##### Instances
``` purescript
Newtype DateTime _
Generic DateTime _
Show DateTime
Decode DateTime
Encode DateTime
```

#### `FailureReason`

``` purescript
newtype FailureReason
  = FailureReason String
```

##### Instances
``` purescript
Newtype FailureReason _
Generic FailureReason _
Show FailureReason
Decode FailureReason
Encode FailureReason
```

#### `GetTranscriptionJobRequest`

``` purescript
newtype GetTranscriptionJobRequest
  = GetTranscriptionJobRequest { "TranscriptionJobName" :: TranscriptionJobName }
```

##### Instances
``` purescript
Newtype GetTranscriptionJobRequest _
Generic GetTranscriptionJobRequest _
Show GetTranscriptionJobRequest
Decode GetTranscriptionJobRequest
Encode GetTranscriptionJobRequest
```

#### `newGetTranscriptionJobRequest`

``` purescript
newGetTranscriptionJobRequest :: TranscriptionJobName -> GetTranscriptionJobRequest
```

Constructs GetTranscriptionJobRequest from required parameters

#### `newGetTranscriptionJobRequest'`

``` purescript
newGetTranscriptionJobRequest' :: TranscriptionJobName -> ({ "TranscriptionJobName" :: TranscriptionJobName } -> { "TranscriptionJobName" :: TranscriptionJobName }) -> GetTranscriptionJobRequest
```

Constructs GetTranscriptionJobRequest's fields from required parameters

#### `GetTranscriptionJobResponse`

``` purescript
newtype GetTranscriptionJobResponse
  = GetTranscriptionJobResponse { "TranscriptionJob" :: Maybe (TranscriptionJob) }
```

##### Instances
``` purescript
Newtype GetTranscriptionJobResponse _
Generic GetTranscriptionJobResponse _
Show GetTranscriptionJobResponse
Decode GetTranscriptionJobResponse
Encode GetTranscriptionJobResponse
```

#### `newGetTranscriptionJobResponse`

``` purescript
newGetTranscriptionJobResponse :: GetTranscriptionJobResponse
```

Constructs GetTranscriptionJobResponse from required parameters

#### `newGetTranscriptionJobResponse'`

``` purescript
newGetTranscriptionJobResponse' :: ({ "TranscriptionJob" :: Maybe (TranscriptionJob) } -> { "TranscriptionJob" :: Maybe (TranscriptionJob) }) -> GetTranscriptionJobResponse
```

Constructs GetTranscriptionJobResponse's fields from required parameters

#### `InternalFailureException`

``` purescript
newtype InternalFailureException
  = InternalFailureException { "Message" :: Maybe (String) }
```

<p>There was an internal error. Check the error message and try your request again.</p>

##### Instances
``` purescript
Newtype InternalFailureException _
Generic InternalFailureException _
Show InternalFailureException
Decode InternalFailureException
Encode InternalFailureException
```

#### `newInternalFailureException`

``` purescript
newInternalFailureException :: InternalFailureException
```

Constructs InternalFailureException from required parameters

#### `newInternalFailureException'`

``` purescript
newInternalFailureException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> InternalFailureException
```

Constructs InternalFailureException's fields from required parameters

#### `LanguageCode`

``` purescript
newtype LanguageCode
  = LanguageCode String
```

##### Instances
``` purescript
Newtype LanguageCode _
Generic LanguageCode _
Show LanguageCode
Decode LanguageCode
Encode LanguageCode
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { "Message" :: Maybe (String) }
```

<p>Either you have sent too many requests or your input file is longer than 2 hours. Wait before you resend your request, or use a smaller file and resend the request.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListTranscriptionJobsRequest`

``` purescript
newtype ListTranscriptionJobsRequest
  = ListTranscriptionJobsRequest { "Status" :: TranscriptionJobStatus, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListTranscriptionJobsRequest _
Generic ListTranscriptionJobsRequest _
Show ListTranscriptionJobsRequest
Decode ListTranscriptionJobsRequest
Encode ListTranscriptionJobsRequest
```

#### `newListTranscriptionJobsRequest`

``` purescript
newListTranscriptionJobsRequest :: TranscriptionJobStatus -> ListTranscriptionJobsRequest
```

Constructs ListTranscriptionJobsRequest from required parameters

#### `newListTranscriptionJobsRequest'`

``` purescript
newListTranscriptionJobsRequest' :: TranscriptionJobStatus -> ({ "Status" :: TranscriptionJobStatus, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "Status" :: TranscriptionJobStatus, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> ListTranscriptionJobsRequest
```

Constructs ListTranscriptionJobsRequest's fields from required parameters

#### `ListTranscriptionJobsResponse`

``` purescript
newtype ListTranscriptionJobsResponse
  = ListTranscriptionJobsResponse { "Status" :: Maybe (TranscriptionJobStatus), "NextToken" :: Maybe (NextToken), "TranscriptionJobSummaries" :: Maybe (TranscriptionJobSummaries) }
```

##### Instances
``` purescript
Newtype ListTranscriptionJobsResponse _
Generic ListTranscriptionJobsResponse _
Show ListTranscriptionJobsResponse
Decode ListTranscriptionJobsResponse
Encode ListTranscriptionJobsResponse
```

#### `newListTranscriptionJobsResponse`

``` purescript
newListTranscriptionJobsResponse :: ListTranscriptionJobsResponse
```

Constructs ListTranscriptionJobsResponse from required parameters

#### `newListTranscriptionJobsResponse'`

``` purescript
newListTranscriptionJobsResponse' :: ({ "Status" :: Maybe (TranscriptionJobStatus), "NextToken" :: Maybe (NextToken), "TranscriptionJobSummaries" :: Maybe (TranscriptionJobSummaries) } -> { "Status" :: Maybe (TranscriptionJobStatus), "NextToken" :: Maybe (NextToken), "TranscriptionJobSummaries" :: Maybe (TranscriptionJobSummaries) }) -> ListTranscriptionJobsResponse
```

Constructs ListTranscriptionJobsResponse's fields from required parameters

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `Media`

``` purescript
newtype Media
  = Media { "MediaFileUri" :: Maybe (Uri) }
```

<p>Describes the input media file in a transcription request.</p>

##### Instances
``` purescript
Newtype Media _
Generic Media _
Show Media
Decode Media
Encode Media
```

#### `newMedia`

``` purescript
newMedia :: Media
```

Constructs Media from required parameters

#### `newMedia'`

``` purescript
newMedia' :: ({ "MediaFileUri" :: Maybe (Uri) } -> { "MediaFileUri" :: Maybe (Uri) }) -> Media
```

Constructs Media's fields from required parameters

#### `MediaFormat`

``` purescript
newtype MediaFormat
  = MediaFormat String
```

##### Instances
``` purescript
Newtype MediaFormat _
Generic MediaFormat _
Show MediaFormat
Decode MediaFormat
Encode MediaFormat
```

#### `MediaSampleRateHertz`

``` purescript
newtype MediaSampleRateHertz
  = MediaSampleRateHertz Int
```

##### Instances
``` purescript
Newtype MediaSampleRateHertz _
Generic MediaSampleRateHertz _
Show MediaSampleRateHertz
Decode MediaSampleRateHertz
Encode MediaSampleRateHertz
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `NotFoundException`

``` purescript
newtype NotFoundException
  = NotFoundException { "Message" :: Maybe (String) }
```

<p>We can't find the requested job. Check the job name and try your request again.</p>

##### Instances
``` purescript
Newtype NotFoundException _
Generic NotFoundException _
Show NotFoundException
Decode NotFoundException
Encode NotFoundException
```

#### `newNotFoundException`

``` purescript
newNotFoundException :: NotFoundException
```

Constructs NotFoundException from required parameters

#### `newNotFoundException'`

``` purescript
newNotFoundException' :: ({ "Message" :: Maybe (String) } -> { "Message" :: Maybe (String) }) -> NotFoundException
```

Constructs NotFoundException's fields from required parameters

#### `StartTranscriptionJobRequest`

``` purescript
newtype StartTranscriptionJobRequest
  = StartTranscriptionJobRequest { "TranscriptionJobName" :: TranscriptionJobName, "LanguageCode" :: LanguageCode, "MediaSampleRateHertz" :: Maybe (MediaSampleRateHertz), "MediaFormat" :: MediaFormat, "Media" :: Media }
```

##### Instances
``` purescript
Newtype StartTranscriptionJobRequest _
Generic StartTranscriptionJobRequest _
Show StartTranscriptionJobRequest
Decode StartTranscriptionJobRequest
Encode StartTranscriptionJobRequest
```

#### `newStartTranscriptionJobRequest`

``` purescript
newStartTranscriptionJobRequest :: LanguageCode -> Media -> MediaFormat -> TranscriptionJobName -> StartTranscriptionJobRequest
```

Constructs StartTranscriptionJobRequest from required parameters

#### `newStartTranscriptionJobRequest'`

``` purescript
newStartTranscriptionJobRequest' :: LanguageCode -> Media -> MediaFormat -> TranscriptionJobName -> ({ "TranscriptionJobName" :: TranscriptionJobName, "LanguageCode" :: LanguageCode, "MediaSampleRateHertz" :: Maybe (MediaSampleRateHertz), "MediaFormat" :: MediaFormat, "Media" :: Media } -> { "TranscriptionJobName" :: TranscriptionJobName, "LanguageCode" :: LanguageCode, "MediaSampleRateHertz" :: Maybe (MediaSampleRateHertz), "MediaFormat" :: MediaFormat, "Media" :: Media }) -> StartTranscriptionJobRequest
```

Constructs StartTranscriptionJobRequest's fields from required parameters

#### `StartTranscriptionJobResponse`

``` purescript
newtype StartTranscriptionJobResponse
  = StartTranscriptionJobResponse { "TranscriptionJob" :: Maybe (TranscriptionJob) }
```

##### Instances
``` purescript
Newtype StartTranscriptionJobResponse _
Generic StartTranscriptionJobResponse _
Show StartTranscriptionJobResponse
Decode StartTranscriptionJobResponse
Encode StartTranscriptionJobResponse
```

#### `newStartTranscriptionJobResponse`

``` purescript
newStartTranscriptionJobResponse :: StartTranscriptionJobResponse
```

Constructs StartTranscriptionJobResponse from required parameters

#### `newStartTranscriptionJobResponse'`

``` purescript
newStartTranscriptionJobResponse' :: ({ "TranscriptionJob" :: Maybe (TranscriptionJob) } -> { "TranscriptionJob" :: Maybe (TranscriptionJob) }) -> StartTranscriptionJobResponse
```

Constructs StartTranscriptionJobResponse's fields from required parameters

#### `Transcript`

``` purescript
newtype Transcript
  = Transcript { "TranscriptFileUri" :: Maybe (Uri) }
```

<p>Describes the output of a transcription job.</p>

##### Instances
``` purescript
Newtype Transcript _
Generic Transcript _
Show Transcript
Decode Transcript
Encode Transcript
```

#### `newTranscript`

``` purescript
newTranscript :: Transcript
```

Constructs Transcript from required parameters

#### `newTranscript'`

``` purescript
newTranscript' :: ({ "TranscriptFileUri" :: Maybe (Uri) } -> { "TranscriptFileUri" :: Maybe (Uri) }) -> Transcript
```

Constructs Transcript's fields from required parameters

#### `TranscriptionJob`

``` purescript
newtype TranscriptionJob
  = TranscriptionJob { "TranscriptionJobName" :: Maybe (TranscriptionJobName), "TranscriptionJobStatus" :: Maybe (TranscriptionJobStatus), "LanguageCode" :: Maybe (LanguageCode), "MediaSampleRateHertz" :: Maybe (MediaSampleRateHertz), "MediaFormat" :: Maybe (MediaFormat), "Media" :: Maybe (Media), "Transcript" :: Maybe (Transcript), "CreationTime" :: Maybe (DateTime), "CompletionTime" :: Maybe (DateTime), "FailureReason" :: Maybe (FailureReason) }
```

<p>Describes an asynchronous transcription job that was created with the <code>StartTranscriptionJob</code> operation.</p>

##### Instances
``` purescript
Newtype TranscriptionJob _
Generic TranscriptionJob _
Show TranscriptionJob
Decode TranscriptionJob
Encode TranscriptionJob
```

#### `newTranscriptionJob`

``` purescript
newTranscriptionJob :: TranscriptionJob
```

Constructs TranscriptionJob from required parameters

#### `newTranscriptionJob'`

``` purescript
newTranscriptionJob' :: ({ "TranscriptionJobName" :: Maybe (TranscriptionJobName), "TranscriptionJobStatus" :: Maybe (TranscriptionJobStatus), "LanguageCode" :: Maybe (LanguageCode), "MediaSampleRateHertz" :: Maybe (MediaSampleRateHertz), "MediaFormat" :: Maybe (MediaFormat), "Media" :: Maybe (Media), "Transcript" :: Maybe (Transcript), "CreationTime" :: Maybe (DateTime), "CompletionTime" :: Maybe (DateTime), "FailureReason" :: Maybe (FailureReason) } -> { "TranscriptionJobName" :: Maybe (TranscriptionJobName), "TranscriptionJobStatus" :: Maybe (TranscriptionJobStatus), "LanguageCode" :: Maybe (LanguageCode), "MediaSampleRateHertz" :: Maybe (MediaSampleRateHertz), "MediaFormat" :: Maybe (MediaFormat), "Media" :: Maybe (Media), "Transcript" :: Maybe (Transcript), "CreationTime" :: Maybe (DateTime), "CompletionTime" :: Maybe (DateTime), "FailureReason" :: Maybe (FailureReason) }) -> TranscriptionJob
```

Constructs TranscriptionJob's fields from required parameters

#### `TranscriptionJobName`

``` purescript
newtype TranscriptionJobName
  = TranscriptionJobName String
```

##### Instances
``` purescript
Newtype TranscriptionJobName _
Generic TranscriptionJobName _
Show TranscriptionJobName
Decode TranscriptionJobName
Encode TranscriptionJobName
```

#### `TranscriptionJobStatus`

``` purescript
newtype TranscriptionJobStatus
  = TranscriptionJobStatus String
```

##### Instances
``` purescript
Newtype TranscriptionJobStatus _
Generic TranscriptionJobStatus _
Show TranscriptionJobStatus
Decode TranscriptionJobStatus
Encode TranscriptionJobStatus
```

#### `TranscriptionJobSummaries`

``` purescript
newtype TranscriptionJobSummaries
  = TranscriptionJobSummaries (Array TranscriptionJobSummary)
```

##### Instances
``` purescript
Newtype TranscriptionJobSummaries _
Generic TranscriptionJobSummaries _
Show TranscriptionJobSummaries
Decode TranscriptionJobSummaries
Encode TranscriptionJobSummaries
```

#### `TranscriptionJobSummary`

``` purescript
newtype TranscriptionJobSummary
  = TranscriptionJobSummary { "TranscriptionJobName" :: Maybe (TranscriptionJobName), "CreationTime" :: Maybe (DateTime), "CompletionTime" :: Maybe (DateTime), "LanguageCode" :: Maybe (LanguageCode), "TranscriptionJobStatus" :: Maybe (TranscriptionJobStatus), "FailureReason" :: Maybe (FailureReason) }
```

<p>Provides a summary of information about a transcription job.</p>

##### Instances
``` purescript
Newtype TranscriptionJobSummary _
Generic TranscriptionJobSummary _
Show TranscriptionJobSummary
Decode TranscriptionJobSummary
Encode TranscriptionJobSummary
```

#### `newTranscriptionJobSummary`

``` purescript
newTranscriptionJobSummary :: TranscriptionJobSummary
```

Constructs TranscriptionJobSummary from required parameters

#### `newTranscriptionJobSummary'`

``` purescript
newTranscriptionJobSummary' :: ({ "TranscriptionJobName" :: Maybe (TranscriptionJobName), "CreationTime" :: Maybe (DateTime), "CompletionTime" :: Maybe (DateTime), "LanguageCode" :: Maybe (LanguageCode), "TranscriptionJobStatus" :: Maybe (TranscriptionJobStatus), "FailureReason" :: Maybe (FailureReason) } -> { "TranscriptionJobName" :: Maybe (TranscriptionJobName), "CreationTime" :: Maybe (DateTime), "CompletionTime" :: Maybe (DateTime), "LanguageCode" :: Maybe (LanguageCode), "TranscriptionJobStatus" :: Maybe (TranscriptionJobStatus), "FailureReason" :: Maybe (FailureReason) }) -> TranscriptionJobSummary
```

Constructs TranscriptionJobSummary's fields from required parameters

#### `Uri`

``` purescript
newtype Uri
  = Uri String
```

##### Instances
``` purescript
Newtype Uri _
Generic Uri _
Show Uri
Decode Uri
Encode Uri
```


