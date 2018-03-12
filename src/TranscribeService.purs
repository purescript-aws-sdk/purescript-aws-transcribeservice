

-- | <p>Operations and objects for transcribing speech to text.</p>
module AWS.TranscribeService where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types


-- | <p>Returns information about a transcription job. To see the status of the job, check the <code>Status</code> field. If the status is <code>COMPLETE</code>, the job is finished and you can find the results at the location specified in the <code>TranscriptionFileUri</code> field.</p>
getTranscriptionJob :: forall eff. GetTranscriptionJobRequest -> Aff (exception :: EXCEPTION | eff) GetTranscriptionJobResponse
getTranscriptionJob = Request.request service method  where
    service = Request.ServiceName "TranscribeService"
    method = Request.MethodName "getTranscriptionJob"


-- | <p>Lists transcription jobs with the specified status.</p>
listTranscriptionJobs :: forall eff. ListTranscriptionJobsRequest -> Aff (exception :: EXCEPTION | eff) ListTranscriptionJobsResponse
listTranscriptionJobs = Request.request service method  where
    service = Request.ServiceName "TranscribeService"
    method = Request.MethodName "listTranscriptionJobs"


-- | <p>Starts an asynchronous job to transcribe speech to text.</p>
startTranscriptionJob :: forall eff. StartTranscriptionJobRequest -> Aff (exception :: EXCEPTION | eff) StartTranscriptionJobResponse
startTranscriptionJob = Request.request service method  where
    service = Request.ServiceName "TranscribeService"
    method = Request.MethodName "startTranscriptionJob"


-- | <p>There is a problem with one of the input fields. Check the S3 bucket name, make sure that the job name is not a duplicate, and confirm that you are using the correct file format. Then resend your request.</p>
newtype BadRequestException = BadRequestException 
  { "Message" :: NullOrUndefined.NullOrUndefined (FailureReason)
  }
derive instance newtypeBadRequestException :: Newtype BadRequestException _
derive instance repGenericBadRequestException :: Generic BadRequestException _
instance showBadRequestException :: Show BadRequestException where
  show = genericShow
instance decodeBadRequestException :: Decode BadRequestException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBadRequestException :: Encode BadRequestException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BadRequestException from required parameters
newBadRequestException :: BadRequestException
newBadRequestException  = BadRequestException { "Message": (NullOrUndefined Nothing) }

-- | Constructs BadRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBadRequestException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (FailureReason) } -> {"Message" :: NullOrUndefined.NullOrUndefined (FailureReason) } ) -> BadRequestException
newBadRequestException'  customize = (BadRequestException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The <code>JobName</code> field is a duplicate of a previously entered job name. Resend your request with a different name.</p>
newtype ConflictException = ConflictException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeConflictException :: Newtype ConflictException _
derive instance repGenericConflictException :: Generic ConflictException _
instance showConflictException :: Show ConflictException where
  show = genericShow
instance decodeConflictException :: Decode ConflictException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConflictException :: Encode ConflictException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ConflictException from required parameters
newConflictException :: ConflictException
newConflictException  = ConflictException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ConflictException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConflictException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> ConflictException
newConflictException'  customize = (ConflictException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype DateTime = DateTime Types.Timestamp
derive instance newtypeDateTime :: Newtype DateTime _
derive instance repGenericDateTime :: Generic DateTime _
instance showDateTime :: Show DateTime where
  show = genericShow
instance decodeDateTime :: Decode DateTime where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDateTime :: Encode DateTime where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype FailureReason = FailureReason String
derive instance newtypeFailureReason :: Newtype FailureReason _
derive instance repGenericFailureReason :: Generic FailureReason _
instance showFailureReason :: Show FailureReason where
  show = genericShow
instance decodeFailureReason :: Decode FailureReason where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFailureReason :: Encode FailureReason where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetTranscriptionJobRequest = GetTranscriptionJobRequest 
  { "TranscriptionJobName" :: (TranscriptionJobName)
  }
derive instance newtypeGetTranscriptionJobRequest :: Newtype GetTranscriptionJobRequest _
derive instance repGenericGetTranscriptionJobRequest :: Generic GetTranscriptionJobRequest _
instance showGetTranscriptionJobRequest :: Show GetTranscriptionJobRequest where
  show = genericShow
instance decodeGetTranscriptionJobRequest :: Decode GetTranscriptionJobRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetTranscriptionJobRequest :: Encode GetTranscriptionJobRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetTranscriptionJobRequest from required parameters
newGetTranscriptionJobRequest :: TranscriptionJobName -> GetTranscriptionJobRequest
newGetTranscriptionJobRequest _TranscriptionJobName = GetTranscriptionJobRequest { "TranscriptionJobName": _TranscriptionJobName }

-- | Constructs GetTranscriptionJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTranscriptionJobRequest' :: TranscriptionJobName -> ( { "TranscriptionJobName" :: (TranscriptionJobName) } -> {"TranscriptionJobName" :: (TranscriptionJobName) } ) -> GetTranscriptionJobRequest
newGetTranscriptionJobRequest' _TranscriptionJobName customize = (GetTranscriptionJobRequest <<< customize) { "TranscriptionJobName": _TranscriptionJobName }



newtype GetTranscriptionJobResponse = GetTranscriptionJobResponse 
  { "TranscriptionJob" :: NullOrUndefined.NullOrUndefined (TranscriptionJob)
  }
derive instance newtypeGetTranscriptionJobResponse :: Newtype GetTranscriptionJobResponse _
derive instance repGenericGetTranscriptionJobResponse :: Generic GetTranscriptionJobResponse _
instance showGetTranscriptionJobResponse :: Show GetTranscriptionJobResponse where
  show = genericShow
instance decodeGetTranscriptionJobResponse :: Decode GetTranscriptionJobResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetTranscriptionJobResponse :: Encode GetTranscriptionJobResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetTranscriptionJobResponse from required parameters
newGetTranscriptionJobResponse :: GetTranscriptionJobResponse
newGetTranscriptionJobResponse  = GetTranscriptionJobResponse { "TranscriptionJob": (NullOrUndefined Nothing) }

-- | Constructs GetTranscriptionJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTranscriptionJobResponse' :: ( { "TranscriptionJob" :: NullOrUndefined.NullOrUndefined (TranscriptionJob) } -> {"TranscriptionJob" :: NullOrUndefined.NullOrUndefined (TranscriptionJob) } ) -> GetTranscriptionJobResponse
newGetTranscriptionJobResponse'  customize = (GetTranscriptionJobResponse <<< customize) { "TranscriptionJob": (NullOrUndefined Nothing) }



-- | <p>There was an internal error. Check the error message and try your request again.</p>
newtype InternalFailureException = InternalFailureException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInternalFailureException :: Newtype InternalFailureException _
derive instance repGenericInternalFailureException :: Generic InternalFailureException _
instance showInternalFailureException :: Show InternalFailureException where
  show = genericShow
instance decodeInternalFailureException :: Decode InternalFailureException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalFailureException :: Encode InternalFailureException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InternalFailureException from required parameters
newInternalFailureException :: InternalFailureException
newInternalFailureException  = InternalFailureException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InternalFailureException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalFailureException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InternalFailureException
newInternalFailureException'  customize = (InternalFailureException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype LanguageCode = LanguageCode String
derive instance newtypeLanguageCode :: Newtype LanguageCode _
derive instance repGenericLanguageCode :: Generic LanguageCode _
instance showLanguageCode :: Show LanguageCode where
  show = genericShow
instance decodeLanguageCode :: Decode LanguageCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLanguageCode :: Encode LanguageCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Either you have sent too many requests or your input file is longer than 2 hours. Wait before you resend your request, or use a smaller file and resend the request.</p>
newtype LimitExceededException = LimitExceededException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where
  show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLimitExceededException :: Encode LimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ListTranscriptionJobsRequest = ListTranscriptionJobsRequest 
  { "Status" :: (TranscriptionJobStatus)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListTranscriptionJobsRequest :: Newtype ListTranscriptionJobsRequest _
derive instance repGenericListTranscriptionJobsRequest :: Generic ListTranscriptionJobsRequest _
instance showListTranscriptionJobsRequest :: Show ListTranscriptionJobsRequest where
  show = genericShow
instance decodeListTranscriptionJobsRequest :: Decode ListTranscriptionJobsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListTranscriptionJobsRequest :: Encode ListTranscriptionJobsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListTranscriptionJobsRequest from required parameters
newListTranscriptionJobsRequest :: TranscriptionJobStatus -> ListTranscriptionJobsRequest
newListTranscriptionJobsRequest _Status = ListTranscriptionJobsRequest { "Status": _Status, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListTranscriptionJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTranscriptionJobsRequest' :: TranscriptionJobStatus -> ( { "Status" :: (TranscriptionJobStatus) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"Status" :: (TranscriptionJobStatus) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListTranscriptionJobsRequest
newListTranscriptionJobsRequest' _Status customize = (ListTranscriptionJobsRequest <<< customize) { "Status": _Status, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListTranscriptionJobsResponse = ListTranscriptionJobsResponse 
  { "Status" :: NullOrUndefined.NullOrUndefined (TranscriptionJobStatus)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "TranscriptionJobSummaries" :: NullOrUndefined.NullOrUndefined (TranscriptionJobSummaries)
  }
derive instance newtypeListTranscriptionJobsResponse :: Newtype ListTranscriptionJobsResponse _
derive instance repGenericListTranscriptionJobsResponse :: Generic ListTranscriptionJobsResponse _
instance showListTranscriptionJobsResponse :: Show ListTranscriptionJobsResponse where
  show = genericShow
instance decodeListTranscriptionJobsResponse :: Decode ListTranscriptionJobsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListTranscriptionJobsResponse :: Encode ListTranscriptionJobsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListTranscriptionJobsResponse from required parameters
newListTranscriptionJobsResponse :: ListTranscriptionJobsResponse
newListTranscriptionJobsResponse  = ListTranscriptionJobsResponse { "NextToken": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TranscriptionJobSummaries": (NullOrUndefined Nothing) }

-- | Constructs ListTranscriptionJobsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTranscriptionJobsResponse' :: ( { "Status" :: NullOrUndefined.NullOrUndefined (TranscriptionJobStatus) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "TranscriptionJobSummaries" :: NullOrUndefined.NullOrUndefined (TranscriptionJobSummaries) } -> {"Status" :: NullOrUndefined.NullOrUndefined (TranscriptionJobStatus) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "TranscriptionJobSummaries" :: NullOrUndefined.NullOrUndefined (TranscriptionJobSummaries) } ) -> ListTranscriptionJobsResponse
newListTranscriptionJobsResponse'  customize = (ListTranscriptionJobsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TranscriptionJobSummaries": (NullOrUndefined Nothing) }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where
  show = genericShow
instance decodeMaxResults :: Decode MaxResults where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxResults :: Encode MaxResults where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes the input media file in a transcription request.</p>
newtype Media = Media 
  { "MediaFileUri" :: NullOrUndefined.NullOrUndefined (Uri)
  }
derive instance newtypeMedia :: Newtype Media _
derive instance repGenericMedia :: Generic Media _
instance showMedia :: Show Media where
  show = genericShow
instance decodeMedia :: Decode Media where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMedia :: Encode Media where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Media from required parameters
newMedia :: Media
newMedia  = Media { "MediaFileUri": (NullOrUndefined Nothing) }

-- | Constructs Media's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMedia' :: ( { "MediaFileUri" :: NullOrUndefined.NullOrUndefined (Uri) } -> {"MediaFileUri" :: NullOrUndefined.NullOrUndefined (Uri) } ) -> Media
newMedia'  customize = (Media <<< customize) { "MediaFileUri": (NullOrUndefined Nothing) }



newtype MediaFormat = MediaFormat String
derive instance newtypeMediaFormat :: Newtype MediaFormat _
derive instance repGenericMediaFormat :: Generic MediaFormat _
instance showMediaFormat :: Show MediaFormat where
  show = genericShow
instance decodeMediaFormat :: Decode MediaFormat where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMediaFormat :: Encode MediaFormat where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MediaSampleRateHertz = MediaSampleRateHertz Int
derive instance newtypeMediaSampleRateHertz :: Newtype MediaSampleRateHertz _
derive instance repGenericMediaSampleRateHertz :: Generic MediaSampleRateHertz _
instance showMediaSampleRateHertz :: Show MediaSampleRateHertz where
  show = genericShow
instance decodeMediaSampleRateHertz :: Decode MediaSampleRateHertz where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMediaSampleRateHertz :: Encode MediaSampleRateHertz where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where
  show = genericShow
instance decodeNextToken :: Decode NextToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNextToken :: Encode NextToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>We can't find the requested job. Check the job name and try your request again.</p>
newtype NotFoundException = NotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where
  show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotFoundException :: Encode NotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype StartTranscriptionJobRequest = StartTranscriptionJobRequest 
  { "TranscriptionJobName" :: (TranscriptionJobName)
  , "LanguageCode" :: (LanguageCode)
  , "MediaSampleRateHertz" :: NullOrUndefined.NullOrUndefined (MediaSampleRateHertz)
  , "MediaFormat" :: (MediaFormat)
  , "Media" :: (Media)
  }
derive instance newtypeStartTranscriptionJobRequest :: Newtype StartTranscriptionJobRequest _
derive instance repGenericStartTranscriptionJobRequest :: Generic StartTranscriptionJobRequest _
instance showStartTranscriptionJobRequest :: Show StartTranscriptionJobRequest where
  show = genericShow
instance decodeStartTranscriptionJobRequest :: Decode StartTranscriptionJobRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStartTranscriptionJobRequest :: Encode StartTranscriptionJobRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StartTranscriptionJobRequest from required parameters
newStartTranscriptionJobRequest :: LanguageCode -> Media -> MediaFormat -> TranscriptionJobName -> StartTranscriptionJobRequest
newStartTranscriptionJobRequest _LanguageCode _Media _MediaFormat _TranscriptionJobName = StartTranscriptionJobRequest { "LanguageCode": _LanguageCode, "Media": _Media, "MediaFormat": _MediaFormat, "TranscriptionJobName": _TranscriptionJobName, "MediaSampleRateHertz": (NullOrUndefined Nothing) }

-- | Constructs StartTranscriptionJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartTranscriptionJobRequest' :: LanguageCode -> Media -> MediaFormat -> TranscriptionJobName -> ( { "TranscriptionJobName" :: (TranscriptionJobName) , "LanguageCode" :: (LanguageCode) , "MediaSampleRateHertz" :: NullOrUndefined.NullOrUndefined (MediaSampleRateHertz) , "MediaFormat" :: (MediaFormat) , "Media" :: (Media) } -> {"TranscriptionJobName" :: (TranscriptionJobName) , "LanguageCode" :: (LanguageCode) , "MediaSampleRateHertz" :: NullOrUndefined.NullOrUndefined (MediaSampleRateHertz) , "MediaFormat" :: (MediaFormat) , "Media" :: (Media) } ) -> StartTranscriptionJobRequest
newStartTranscriptionJobRequest' _LanguageCode _Media _MediaFormat _TranscriptionJobName customize = (StartTranscriptionJobRequest <<< customize) { "LanguageCode": _LanguageCode, "Media": _Media, "MediaFormat": _MediaFormat, "TranscriptionJobName": _TranscriptionJobName, "MediaSampleRateHertz": (NullOrUndefined Nothing) }



newtype StartTranscriptionJobResponse = StartTranscriptionJobResponse 
  { "TranscriptionJob" :: NullOrUndefined.NullOrUndefined (TranscriptionJob)
  }
derive instance newtypeStartTranscriptionJobResponse :: Newtype StartTranscriptionJobResponse _
derive instance repGenericStartTranscriptionJobResponse :: Generic StartTranscriptionJobResponse _
instance showStartTranscriptionJobResponse :: Show StartTranscriptionJobResponse where
  show = genericShow
instance decodeStartTranscriptionJobResponse :: Decode StartTranscriptionJobResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStartTranscriptionJobResponse :: Encode StartTranscriptionJobResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StartTranscriptionJobResponse from required parameters
newStartTranscriptionJobResponse :: StartTranscriptionJobResponse
newStartTranscriptionJobResponse  = StartTranscriptionJobResponse { "TranscriptionJob": (NullOrUndefined Nothing) }

-- | Constructs StartTranscriptionJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartTranscriptionJobResponse' :: ( { "TranscriptionJob" :: NullOrUndefined.NullOrUndefined (TranscriptionJob) } -> {"TranscriptionJob" :: NullOrUndefined.NullOrUndefined (TranscriptionJob) } ) -> StartTranscriptionJobResponse
newStartTranscriptionJobResponse'  customize = (StartTranscriptionJobResponse <<< customize) { "TranscriptionJob": (NullOrUndefined Nothing) }



-- | <p>Describes the output of a transcription job.</p>
newtype Transcript = Transcript 
  { "TranscriptFileUri" :: NullOrUndefined.NullOrUndefined (Uri)
  }
derive instance newtypeTranscript :: Newtype Transcript _
derive instance repGenericTranscript :: Generic Transcript _
instance showTranscript :: Show Transcript where
  show = genericShow
instance decodeTranscript :: Decode Transcript where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTranscript :: Encode Transcript where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Transcript from required parameters
newTranscript :: Transcript
newTranscript  = Transcript { "TranscriptFileUri": (NullOrUndefined Nothing) }

-- | Constructs Transcript's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTranscript' :: ( { "TranscriptFileUri" :: NullOrUndefined.NullOrUndefined (Uri) } -> {"TranscriptFileUri" :: NullOrUndefined.NullOrUndefined (Uri) } ) -> Transcript
newTranscript'  customize = (Transcript <<< customize) { "TranscriptFileUri": (NullOrUndefined Nothing) }



-- | <p>Describes an asynchronous transcription job that was created with the <code>StartTranscriptionJob</code> operation.</p>
newtype TranscriptionJob = TranscriptionJob 
  { "TranscriptionJobName" :: NullOrUndefined.NullOrUndefined (TranscriptionJobName)
  , "TranscriptionJobStatus" :: NullOrUndefined.NullOrUndefined (TranscriptionJobStatus)
  , "LanguageCode" :: NullOrUndefined.NullOrUndefined (LanguageCode)
  , "MediaSampleRateHertz" :: NullOrUndefined.NullOrUndefined (MediaSampleRateHertz)
  , "MediaFormat" :: NullOrUndefined.NullOrUndefined (MediaFormat)
  , "Media" :: NullOrUndefined.NullOrUndefined (Media)
  , "Transcript" :: NullOrUndefined.NullOrUndefined (Transcript)
  , "CreationTime" :: NullOrUndefined.NullOrUndefined (DateTime)
  , "CompletionTime" :: NullOrUndefined.NullOrUndefined (DateTime)
  , "FailureReason" :: NullOrUndefined.NullOrUndefined (FailureReason)
  }
derive instance newtypeTranscriptionJob :: Newtype TranscriptionJob _
derive instance repGenericTranscriptionJob :: Generic TranscriptionJob _
instance showTranscriptionJob :: Show TranscriptionJob where
  show = genericShow
instance decodeTranscriptionJob :: Decode TranscriptionJob where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTranscriptionJob :: Encode TranscriptionJob where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TranscriptionJob from required parameters
newTranscriptionJob :: TranscriptionJob
newTranscriptionJob  = TranscriptionJob { "CompletionTime": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "FailureReason": (NullOrUndefined Nothing), "LanguageCode": (NullOrUndefined Nothing), "Media": (NullOrUndefined Nothing), "MediaFormat": (NullOrUndefined Nothing), "MediaSampleRateHertz": (NullOrUndefined Nothing), "Transcript": (NullOrUndefined Nothing), "TranscriptionJobName": (NullOrUndefined Nothing), "TranscriptionJobStatus": (NullOrUndefined Nothing) }

-- | Constructs TranscriptionJob's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTranscriptionJob' :: ( { "TranscriptionJobName" :: NullOrUndefined.NullOrUndefined (TranscriptionJobName) , "TranscriptionJobStatus" :: NullOrUndefined.NullOrUndefined (TranscriptionJobStatus) , "LanguageCode" :: NullOrUndefined.NullOrUndefined (LanguageCode) , "MediaSampleRateHertz" :: NullOrUndefined.NullOrUndefined (MediaSampleRateHertz) , "MediaFormat" :: NullOrUndefined.NullOrUndefined (MediaFormat) , "Media" :: NullOrUndefined.NullOrUndefined (Media) , "Transcript" :: NullOrUndefined.NullOrUndefined (Transcript) , "CreationTime" :: NullOrUndefined.NullOrUndefined (DateTime) , "CompletionTime" :: NullOrUndefined.NullOrUndefined (DateTime) , "FailureReason" :: NullOrUndefined.NullOrUndefined (FailureReason) } -> {"TranscriptionJobName" :: NullOrUndefined.NullOrUndefined (TranscriptionJobName) , "TranscriptionJobStatus" :: NullOrUndefined.NullOrUndefined (TranscriptionJobStatus) , "LanguageCode" :: NullOrUndefined.NullOrUndefined (LanguageCode) , "MediaSampleRateHertz" :: NullOrUndefined.NullOrUndefined (MediaSampleRateHertz) , "MediaFormat" :: NullOrUndefined.NullOrUndefined (MediaFormat) , "Media" :: NullOrUndefined.NullOrUndefined (Media) , "Transcript" :: NullOrUndefined.NullOrUndefined (Transcript) , "CreationTime" :: NullOrUndefined.NullOrUndefined (DateTime) , "CompletionTime" :: NullOrUndefined.NullOrUndefined (DateTime) , "FailureReason" :: NullOrUndefined.NullOrUndefined (FailureReason) } ) -> TranscriptionJob
newTranscriptionJob'  customize = (TranscriptionJob <<< customize) { "CompletionTime": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "FailureReason": (NullOrUndefined Nothing), "LanguageCode": (NullOrUndefined Nothing), "Media": (NullOrUndefined Nothing), "MediaFormat": (NullOrUndefined Nothing), "MediaSampleRateHertz": (NullOrUndefined Nothing), "Transcript": (NullOrUndefined Nothing), "TranscriptionJobName": (NullOrUndefined Nothing), "TranscriptionJobStatus": (NullOrUndefined Nothing) }



newtype TranscriptionJobName = TranscriptionJobName String
derive instance newtypeTranscriptionJobName :: Newtype TranscriptionJobName _
derive instance repGenericTranscriptionJobName :: Generic TranscriptionJobName _
instance showTranscriptionJobName :: Show TranscriptionJobName where
  show = genericShow
instance decodeTranscriptionJobName :: Decode TranscriptionJobName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTranscriptionJobName :: Encode TranscriptionJobName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TranscriptionJobStatus = TranscriptionJobStatus String
derive instance newtypeTranscriptionJobStatus :: Newtype TranscriptionJobStatus _
derive instance repGenericTranscriptionJobStatus :: Generic TranscriptionJobStatus _
instance showTranscriptionJobStatus :: Show TranscriptionJobStatus where
  show = genericShow
instance decodeTranscriptionJobStatus :: Decode TranscriptionJobStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTranscriptionJobStatus :: Encode TranscriptionJobStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TranscriptionJobSummaries = TranscriptionJobSummaries (Array TranscriptionJobSummary)
derive instance newtypeTranscriptionJobSummaries :: Newtype TranscriptionJobSummaries _
derive instance repGenericTranscriptionJobSummaries :: Generic TranscriptionJobSummaries _
instance showTranscriptionJobSummaries :: Show TranscriptionJobSummaries where
  show = genericShow
instance decodeTranscriptionJobSummaries :: Decode TranscriptionJobSummaries where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTranscriptionJobSummaries :: Encode TranscriptionJobSummaries where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Provides a summary of information about a transcription job.</p>
newtype TranscriptionJobSummary = TranscriptionJobSummary 
  { "TranscriptionJobName" :: NullOrUndefined.NullOrUndefined (TranscriptionJobName)
  , "CreationTime" :: NullOrUndefined.NullOrUndefined (DateTime)
  , "CompletionTime" :: NullOrUndefined.NullOrUndefined (DateTime)
  , "LanguageCode" :: NullOrUndefined.NullOrUndefined (LanguageCode)
  , "TranscriptionJobStatus" :: NullOrUndefined.NullOrUndefined (TranscriptionJobStatus)
  , "FailureReason" :: NullOrUndefined.NullOrUndefined (FailureReason)
  }
derive instance newtypeTranscriptionJobSummary :: Newtype TranscriptionJobSummary _
derive instance repGenericTranscriptionJobSummary :: Generic TranscriptionJobSummary _
instance showTranscriptionJobSummary :: Show TranscriptionJobSummary where
  show = genericShow
instance decodeTranscriptionJobSummary :: Decode TranscriptionJobSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTranscriptionJobSummary :: Encode TranscriptionJobSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TranscriptionJobSummary from required parameters
newTranscriptionJobSummary :: TranscriptionJobSummary
newTranscriptionJobSummary  = TranscriptionJobSummary { "CompletionTime": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "FailureReason": (NullOrUndefined Nothing), "LanguageCode": (NullOrUndefined Nothing), "TranscriptionJobName": (NullOrUndefined Nothing), "TranscriptionJobStatus": (NullOrUndefined Nothing) }

-- | Constructs TranscriptionJobSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTranscriptionJobSummary' :: ( { "TranscriptionJobName" :: NullOrUndefined.NullOrUndefined (TranscriptionJobName) , "CreationTime" :: NullOrUndefined.NullOrUndefined (DateTime) , "CompletionTime" :: NullOrUndefined.NullOrUndefined (DateTime) , "LanguageCode" :: NullOrUndefined.NullOrUndefined (LanguageCode) , "TranscriptionJobStatus" :: NullOrUndefined.NullOrUndefined (TranscriptionJobStatus) , "FailureReason" :: NullOrUndefined.NullOrUndefined (FailureReason) } -> {"TranscriptionJobName" :: NullOrUndefined.NullOrUndefined (TranscriptionJobName) , "CreationTime" :: NullOrUndefined.NullOrUndefined (DateTime) , "CompletionTime" :: NullOrUndefined.NullOrUndefined (DateTime) , "LanguageCode" :: NullOrUndefined.NullOrUndefined (LanguageCode) , "TranscriptionJobStatus" :: NullOrUndefined.NullOrUndefined (TranscriptionJobStatus) , "FailureReason" :: NullOrUndefined.NullOrUndefined (FailureReason) } ) -> TranscriptionJobSummary
newTranscriptionJobSummary'  customize = (TranscriptionJobSummary <<< customize) { "CompletionTime": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "FailureReason": (NullOrUndefined Nothing), "LanguageCode": (NullOrUndefined Nothing), "TranscriptionJobName": (NullOrUndefined Nothing), "TranscriptionJobStatus": (NullOrUndefined Nothing) }



newtype Uri = Uri String
derive instance newtypeUri :: Newtype Uri _
derive instance repGenericUri :: Generic Uri _
instance showUri :: Show Uri where
  show = genericShow
instance decodeUri :: Decode Uri where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUri :: Encode Uri where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

