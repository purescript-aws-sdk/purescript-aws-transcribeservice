
module AWS.TranscribeService.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>There is a problem with one of the input fields. Check the S3 bucket name, make sure that the job name is not a duplicate, and confirm that you are using the correct file format. Then resend your request.</p>
newtype BadRequestException = BadRequestException 
  { "Message" :: Maybe (FailureReason)
  }
derive instance newtypeBadRequestException :: Newtype BadRequestException _
derive instance repGenericBadRequestException :: Generic BadRequestException _
instance showBadRequestException :: Show BadRequestException where show = genericShow
instance decodeBadRequestException :: Decode BadRequestException where decode = genericDecode options
instance encodeBadRequestException :: Encode BadRequestException where encode = genericEncode options

-- | Constructs BadRequestException from required parameters
newBadRequestException :: BadRequestException
newBadRequestException  = BadRequestException { "Message": Nothing }

-- | Constructs BadRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBadRequestException' :: ( { "Message" :: Maybe (FailureReason) } -> {"Message" :: Maybe (FailureReason) } ) -> BadRequestException
newBadRequestException'  customize = (BadRequestException <<< customize) { "Message": Nothing }



-- | <p>The <code>JobName</code> field is a duplicate of a previously entered job name. Resend your request with a different name.</p>
newtype ConflictException = ConflictException 
  { "Message" :: Maybe (String)
  }
derive instance newtypeConflictException :: Newtype ConflictException _
derive instance repGenericConflictException :: Generic ConflictException _
instance showConflictException :: Show ConflictException where show = genericShow
instance decodeConflictException :: Decode ConflictException where decode = genericDecode options
instance encodeConflictException :: Encode ConflictException where encode = genericEncode options

-- | Constructs ConflictException from required parameters
newConflictException :: ConflictException
newConflictException  = ConflictException { "Message": Nothing }

-- | Constructs ConflictException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConflictException' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> ConflictException
newConflictException'  customize = (ConflictException <<< customize) { "Message": Nothing }



newtype DateTime = DateTime Types.Timestamp
derive instance newtypeDateTime :: Newtype DateTime _
derive instance repGenericDateTime :: Generic DateTime _
instance showDateTime :: Show DateTime where show = genericShow
instance decodeDateTime :: Decode DateTime where decode = genericDecode options
instance encodeDateTime :: Encode DateTime where encode = genericEncode options



newtype FailureReason = FailureReason String
derive instance newtypeFailureReason :: Newtype FailureReason _
derive instance repGenericFailureReason :: Generic FailureReason _
instance showFailureReason :: Show FailureReason where show = genericShow
instance decodeFailureReason :: Decode FailureReason where decode = genericDecode options
instance encodeFailureReason :: Encode FailureReason where encode = genericEncode options



newtype GetTranscriptionJobRequest = GetTranscriptionJobRequest 
  { "TranscriptionJobName" :: (TranscriptionJobName)
  }
derive instance newtypeGetTranscriptionJobRequest :: Newtype GetTranscriptionJobRequest _
derive instance repGenericGetTranscriptionJobRequest :: Generic GetTranscriptionJobRequest _
instance showGetTranscriptionJobRequest :: Show GetTranscriptionJobRequest where show = genericShow
instance decodeGetTranscriptionJobRequest :: Decode GetTranscriptionJobRequest where decode = genericDecode options
instance encodeGetTranscriptionJobRequest :: Encode GetTranscriptionJobRequest where encode = genericEncode options

-- | Constructs GetTranscriptionJobRequest from required parameters
newGetTranscriptionJobRequest :: TranscriptionJobName -> GetTranscriptionJobRequest
newGetTranscriptionJobRequest _TranscriptionJobName = GetTranscriptionJobRequest { "TranscriptionJobName": _TranscriptionJobName }

-- | Constructs GetTranscriptionJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTranscriptionJobRequest' :: TranscriptionJobName -> ( { "TranscriptionJobName" :: (TranscriptionJobName) } -> {"TranscriptionJobName" :: (TranscriptionJobName) } ) -> GetTranscriptionJobRequest
newGetTranscriptionJobRequest' _TranscriptionJobName customize = (GetTranscriptionJobRequest <<< customize) { "TranscriptionJobName": _TranscriptionJobName }



newtype GetTranscriptionJobResponse = GetTranscriptionJobResponse 
  { "TranscriptionJob" :: Maybe (TranscriptionJob)
  }
derive instance newtypeGetTranscriptionJobResponse :: Newtype GetTranscriptionJobResponse _
derive instance repGenericGetTranscriptionJobResponse :: Generic GetTranscriptionJobResponse _
instance showGetTranscriptionJobResponse :: Show GetTranscriptionJobResponse where show = genericShow
instance decodeGetTranscriptionJobResponse :: Decode GetTranscriptionJobResponse where decode = genericDecode options
instance encodeGetTranscriptionJobResponse :: Encode GetTranscriptionJobResponse where encode = genericEncode options

-- | Constructs GetTranscriptionJobResponse from required parameters
newGetTranscriptionJobResponse :: GetTranscriptionJobResponse
newGetTranscriptionJobResponse  = GetTranscriptionJobResponse { "TranscriptionJob": Nothing }

-- | Constructs GetTranscriptionJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTranscriptionJobResponse' :: ( { "TranscriptionJob" :: Maybe (TranscriptionJob) } -> {"TranscriptionJob" :: Maybe (TranscriptionJob) } ) -> GetTranscriptionJobResponse
newGetTranscriptionJobResponse'  customize = (GetTranscriptionJobResponse <<< customize) { "TranscriptionJob": Nothing }



-- | <p>There was an internal error. Check the error message and try your request again.</p>
newtype InternalFailureException = InternalFailureException 
  { "Message" :: Maybe (String)
  }
derive instance newtypeInternalFailureException :: Newtype InternalFailureException _
derive instance repGenericInternalFailureException :: Generic InternalFailureException _
instance showInternalFailureException :: Show InternalFailureException where show = genericShow
instance decodeInternalFailureException :: Decode InternalFailureException where decode = genericDecode options
instance encodeInternalFailureException :: Encode InternalFailureException where encode = genericEncode options

-- | Constructs InternalFailureException from required parameters
newInternalFailureException :: InternalFailureException
newInternalFailureException  = InternalFailureException { "Message": Nothing }

-- | Constructs InternalFailureException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalFailureException' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> InternalFailureException
newInternalFailureException'  customize = (InternalFailureException <<< customize) { "Message": Nothing }



newtype LanguageCode = LanguageCode String
derive instance newtypeLanguageCode :: Newtype LanguageCode _
derive instance repGenericLanguageCode :: Generic LanguageCode _
instance showLanguageCode :: Show LanguageCode where show = genericShow
instance decodeLanguageCode :: Decode LanguageCode where decode = genericDecode options
instance encodeLanguageCode :: Encode LanguageCode where encode = genericEncode options



-- | <p>Either you have sent too many requests or your input file is longer than 2 hours. Wait before you resend your request, or use a smaller file and resend the request.</p>
newtype LimitExceededException = LimitExceededException 
  { "Message" :: Maybe (String)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "Message": Nothing }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "Message": Nothing }



newtype ListTranscriptionJobsRequest = ListTranscriptionJobsRequest 
  { "Status" :: (TranscriptionJobStatus)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListTranscriptionJobsRequest :: Newtype ListTranscriptionJobsRequest _
derive instance repGenericListTranscriptionJobsRequest :: Generic ListTranscriptionJobsRequest _
instance showListTranscriptionJobsRequest :: Show ListTranscriptionJobsRequest where show = genericShow
instance decodeListTranscriptionJobsRequest :: Decode ListTranscriptionJobsRequest where decode = genericDecode options
instance encodeListTranscriptionJobsRequest :: Encode ListTranscriptionJobsRequest where encode = genericEncode options

-- | Constructs ListTranscriptionJobsRequest from required parameters
newListTranscriptionJobsRequest :: TranscriptionJobStatus -> ListTranscriptionJobsRequest
newListTranscriptionJobsRequest _Status = ListTranscriptionJobsRequest { "Status": _Status, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListTranscriptionJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTranscriptionJobsRequest' :: TranscriptionJobStatus -> ( { "Status" :: (TranscriptionJobStatus) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"Status" :: (TranscriptionJobStatus) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListTranscriptionJobsRequest
newListTranscriptionJobsRequest' _Status customize = (ListTranscriptionJobsRequest <<< customize) { "Status": _Status, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListTranscriptionJobsResponse = ListTranscriptionJobsResponse 
  { "Status" :: Maybe (TranscriptionJobStatus)
  , "NextToken" :: Maybe (NextToken)
  , "TranscriptionJobSummaries" :: Maybe (TranscriptionJobSummaries)
  }
derive instance newtypeListTranscriptionJobsResponse :: Newtype ListTranscriptionJobsResponse _
derive instance repGenericListTranscriptionJobsResponse :: Generic ListTranscriptionJobsResponse _
instance showListTranscriptionJobsResponse :: Show ListTranscriptionJobsResponse where show = genericShow
instance decodeListTranscriptionJobsResponse :: Decode ListTranscriptionJobsResponse where decode = genericDecode options
instance encodeListTranscriptionJobsResponse :: Encode ListTranscriptionJobsResponse where encode = genericEncode options

-- | Constructs ListTranscriptionJobsResponse from required parameters
newListTranscriptionJobsResponse :: ListTranscriptionJobsResponse
newListTranscriptionJobsResponse  = ListTranscriptionJobsResponse { "NextToken": Nothing, "Status": Nothing, "TranscriptionJobSummaries": Nothing }

-- | Constructs ListTranscriptionJobsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTranscriptionJobsResponse' :: ( { "Status" :: Maybe (TranscriptionJobStatus) , "NextToken" :: Maybe (NextToken) , "TranscriptionJobSummaries" :: Maybe (TranscriptionJobSummaries) } -> {"Status" :: Maybe (TranscriptionJobStatus) , "NextToken" :: Maybe (NextToken) , "TranscriptionJobSummaries" :: Maybe (TranscriptionJobSummaries) } ) -> ListTranscriptionJobsResponse
newListTranscriptionJobsResponse'  customize = (ListTranscriptionJobsResponse <<< customize) { "NextToken": Nothing, "Status": Nothing, "TranscriptionJobSummaries": Nothing }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



-- | <p>Describes the input media file in a transcription request.</p>
newtype Media = Media 
  { "MediaFileUri" :: Maybe (Uri)
  }
derive instance newtypeMedia :: Newtype Media _
derive instance repGenericMedia :: Generic Media _
instance showMedia :: Show Media where show = genericShow
instance decodeMedia :: Decode Media where decode = genericDecode options
instance encodeMedia :: Encode Media where encode = genericEncode options

-- | Constructs Media from required parameters
newMedia :: Media
newMedia  = Media { "MediaFileUri": Nothing }

-- | Constructs Media's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMedia' :: ( { "MediaFileUri" :: Maybe (Uri) } -> {"MediaFileUri" :: Maybe (Uri) } ) -> Media
newMedia'  customize = (Media <<< customize) { "MediaFileUri": Nothing }



newtype MediaFormat = MediaFormat String
derive instance newtypeMediaFormat :: Newtype MediaFormat _
derive instance repGenericMediaFormat :: Generic MediaFormat _
instance showMediaFormat :: Show MediaFormat where show = genericShow
instance decodeMediaFormat :: Decode MediaFormat where decode = genericDecode options
instance encodeMediaFormat :: Encode MediaFormat where encode = genericEncode options



newtype MediaSampleRateHertz = MediaSampleRateHertz Int
derive instance newtypeMediaSampleRateHertz :: Newtype MediaSampleRateHertz _
derive instance repGenericMediaSampleRateHertz :: Generic MediaSampleRateHertz _
instance showMediaSampleRateHertz :: Show MediaSampleRateHertz where show = genericShow
instance decodeMediaSampleRateHertz :: Decode MediaSampleRateHertz where decode = genericDecode options
instance encodeMediaSampleRateHertz :: Encode MediaSampleRateHertz where encode = genericEncode options



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



-- | <p>We can't find the requested job. Check the job name and try your request again.</p>
newtype NotFoundException = NotFoundException 
  { "Message" :: Maybe (String)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where decode = genericDecode options
instance encodeNotFoundException :: Encode NotFoundException where encode = genericEncode options

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "Message": Nothing }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "Message" :: Maybe (String) } -> {"Message" :: Maybe (String) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "Message": Nothing }



newtype StartTranscriptionJobRequest = StartTranscriptionJobRequest 
  { "TranscriptionJobName" :: (TranscriptionJobName)
  , "LanguageCode" :: (LanguageCode)
  , "MediaSampleRateHertz" :: Maybe (MediaSampleRateHertz)
  , "MediaFormat" :: (MediaFormat)
  , "Media" :: (Media)
  }
derive instance newtypeStartTranscriptionJobRequest :: Newtype StartTranscriptionJobRequest _
derive instance repGenericStartTranscriptionJobRequest :: Generic StartTranscriptionJobRequest _
instance showStartTranscriptionJobRequest :: Show StartTranscriptionJobRequest where show = genericShow
instance decodeStartTranscriptionJobRequest :: Decode StartTranscriptionJobRequest where decode = genericDecode options
instance encodeStartTranscriptionJobRequest :: Encode StartTranscriptionJobRequest where encode = genericEncode options

-- | Constructs StartTranscriptionJobRequest from required parameters
newStartTranscriptionJobRequest :: LanguageCode -> Media -> MediaFormat -> TranscriptionJobName -> StartTranscriptionJobRequest
newStartTranscriptionJobRequest _LanguageCode _Media _MediaFormat _TranscriptionJobName = StartTranscriptionJobRequest { "LanguageCode": _LanguageCode, "Media": _Media, "MediaFormat": _MediaFormat, "TranscriptionJobName": _TranscriptionJobName, "MediaSampleRateHertz": Nothing }

-- | Constructs StartTranscriptionJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartTranscriptionJobRequest' :: LanguageCode -> Media -> MediaFormat -> TranscriptionJobName -> ( { "TranscriptionJobName" :: (TranscriptionJobName) , "LanguageCode" :: (LanguageCode) , "MediaSampleRateHertz" :: Maybe (MediaSampleRateHertz) , "MediaFormat" :: (MediaFormat) , "Media" :: (Media) } -> {"TranscriptionJobName" :: (TranscriptionJobName) , "LanguageCode" :: (LanguageCode) , "MediaSampleRateHertz" :: Maybe (MediaSampleRateHertz) , "MediaFormat" :: (MediaFormat) , "Media" :: (Media) } ) -> StartTranscriptionJobRequest
newStartTranscriptionJobRequest' _LanguageCode _Media _MediaFormat _TranscriptionJobName customize = (StartTranscriptionJobRequest <<< customize) { "LanguageCode": _LanguageCode, "Media": _Media, "MediaFormat": _MediaFormat, "TranscriptionJobName": _TranscriptionJobName, "MediaSampleRateHertz": Nothing }



newtype StartTranscriptionJobResponse = StartTranscriptionJobResponse 
  { "TranscriptionJob" :: Maybe (TranscriptionJob)
  }
derive instance newtypeStartTranscriptionJobResponse :: Newtype StartTranscriptionJobResponse _
derive instance repGenericStartTranscriptionJobResponse :: Generic StartTranscriptionJobResponse _
instance showStartTranscriptionJobResponse :: Show StartTranscriptionJobResponse where show = genericShow
instance decodeStartTranscriptionJobResponse :: Decode StartTranscriptionJobResponse where decode = genericDecode options
instance encodeStartTranscriptionJobResponse :: Encode StartTranscriptionJobResponse where encode = genericEncode options

-- | Constructs StartTranscriptionJobResponse from required parameters
newStartTranscriptionJobResponse :: StartTranscriptionJobResponse
newStartTranscriptionJobResponse  = StartTranscriptionJobResponse { "TranscriptionJob": Nothing }

-- | Constructs StartTranscriptionJobResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartTranscriptionJobResponse' :: ( { "TranscriptionJob" :: Maybe (TranscriptionJob) } -> {"TranscriptionJob" :: Maybe (TranscriptionJob) } ) -> StartTranscriptionJobResponse
newStartTranscriptionJobResponse'  customize = (StartTranscriptionJobResponse <<< customize) { "TranscriptionJob": Nothing }



-- | <p>Describes the output of a transcription job.</p>
newtype Transcript = Transcript 
  { "TranscriptFileUri" :: Maybe (Uri)
  }
derive instance newtypeTranscript :: Newtype Transcript _
derive instance repGenericTranscript :: Generic Transcript _
instance showTranscript :: Show Transcript where show = genericShow
instance decodeTranscript :: Decode Transcript where decode = genericDecode options
instance encodeTranscript :: Encode Transcript where encode = genericEncode options

-- | Constructs Transcript from required parameters
newTranscript :: Transcript
newTranscript  = Transcript { "TranscriptFileUri": Nothing }

-- | Constructs Transcript's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTranscript' :: ( { "TranscriptFileUri" :: Maybe (Uri) } -> {"TranscriptFileUri" :: Maybe (Uri) } ) -> Transcript
newTranscript'  customize = (Transcript <<< customize) { "TranscriptFileUri": Nothing }



-- | <p>Describes an asynchronous transcription job that was created with the <code>StartTranscriptionJob</code> operation.</p>
newtype TranscriptionJob = TranscriptionJob 
  { "TranscriptionJobName" :: Maybe (TranscriptionJobName)
  , "TranscriptionJobStatus" :: Maybe (TranscriptionJobStatus)
  , "LanguageCode" :: Maybe (LanguageCode)
  , "MediaSampleRateHertz" :: Maybe (MediaSampleRateHertz)
  , "MediaFormat" :: Maybe (MediaFormat)
  , "Media" :: Maybe (Media)
  , "Transcript" :: Maybe (Transcript)
  , "CreationTime" :: Maybe (DateTime)
  , "CompletionTime" :: Maybe (DateTime)
  , "FailureReason" :: Maybe (FailureReason)
  }
derive instance newtypeTranscriptionJob :: Newtype TranscriptionJob _
derive instance repGenericTranscriptionJob :: Generic TranscriptionJob _
instance showTranscriptionJob :: Show TranscriptionJob where show = genericShow
instance decodeTranscriptionJob :: Decode TranscriptionJob where decode = genericDecode options
instance encodeTranscriptionJob :: Encode TranscriptionJob where encode = genericEncode options

-- | Constructs TranscriptionJob from required parameters
newTranscriptionJob :: TranscriptionJob
newTranscriptionJob  = TranscriptionJob { "CompletionTime": Nothing, "CreationTime": Nothing, "FailureReason": Nothing, "LanguageCode": Nothing, "Media": Nothing, "MediaFormat": Nothing, "MediaSampleRateHertz": Nothing, "Transcript": Nothing, "TranscriptionJobName": Nothing, "TranscriptionJobStatus": Nothing }

-- | Constructs TranscriptionJob's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTranscriptionJob' :: ( { "TranscriptionJobName" :: Maybe (TranscriptionJobName) , "TranscriptionJobStatus" :: Maybe (TranscriptionJobStatus) , "LanguageCode" :: Maybe (LanguageCode) , "MediaSampleRateHertz" :: Maybe (MediaSampleRateHertz) , "MediaFormat" :: Maybe (MediaFormat) , "Media" :: Maybe (Media) , "Transcript" :: Maybe (Transcript) , "CreationTime" :: Maybe (DateTime) , "CompletionTime" :: Maybe (DateTime) , "FailureReason" :: Maybe (FailureReason) } -> {"TranscriptionJobName" :: Maybe (TranscriptionJobName) , "TranscriptionJobStatus" :: Maybe (TranscriptionJobStatus) , "LanguageCode" :: Maybe (LanguageCode) , "MediaSampleRateHertz" :: Maybe (MediaSampleRateHertz) , "MediaFormat" :: Maybe (MediaFormat) , "Media" :: Maybe (Media) , "Transcript" :: Maybe (Transcript) , "CreationTime" :: Maybe (DateTime) , "CompletionTime" :: Maybe (DateTime) , "FailureReason" :: Maybe (FailureReason) } ) -> TranscriptionJob
newTranscriptionJob'  customize = (TranscriptionJob <<< customize) { "CompletionTime": Nothing, "CreationTime": Nothing, "FailureReason": Nothing, "LanguageCode": Nothing, "Media": Nothing, "MediaFormat": Nothing, "MediaSampleRateHertz": Nothing, "Transcript": Nothing, "TranscriptionJobName": Nothing, "TranscriptionJobStatus": Nothing }



newtype TranscriptionJobName = TranscriptionJobName String
derive instance newtypeTranscriptionJobName :: Newtype TranscriptionJobName _
derive instance repGenericTranscriptionJobName :: Generic TranscriptionJobName _
instance showTranscriptionJobName :: Show TranscriptionJobName where show = genericShow
instance decodeTranscriptionJobName :: Decode TranscriptionJobName where decode = genericDecode options
instance encodeTranscriptionJobName :: Encode TranscriptionJobName where encode = genericEncode options



newtype TranscriptionJobStatus = TranscriptionJobStatus String
derive instance newtypeTranscriptionJobStatus :: Newtype TranscriptionJobStatus _
derive instance repGenericTranscriptionJobStatus :: Generic TranscriptionJobStatus _
instance showTranscriptionJobStatus :: Show TranscriptionJobStatus where show = genericShow
instance decodeTranscriptionJobStatus :: Decode TranscriptionJobStatus where decode = genericDecode options
instance encodeTranscriptionJobStatus :: Encode TranscriptionJobStatus where encode = genericEncode options



newtype TranscriptionJobSummaries = TranscriptionJobSummaries (Array TranscriptionJobSummary)
derive instance newtypeTranscriptionJobSummaries :: Newtype TranscriptionJobSummaries _
derive instance repGenericTranscriptionJobSummaries :: Generic TranscriptionJobSummaries _
instance showTranscriptionJobSummaries :: Show TranscriptionJobSummaries where show = genericShow
instance decodeTranscriptionJobSummaries :: Decode TranscriptionJobSummaries where decode = genericDecode options
instance encodeTranscriptionJobSummaries :: Encode TranscriptionJobSummaries where encode = genericEncode options



-- | <p>Provides a summary of information about a transcription job.</p>
newtype TranscriptionJobSummary = TranscriptionJobSummary 
  { "TranscriptionJobName" :: Maybe (TranscriptionJobName)
  , "CreationTime" :: Maybe (DateTime)
  , "CompletionTime" :: Maybe (DateTime)
  , "LanguageCode" :: Maybe (LanguageCode)
  , "TranscriptionJobStatus" :: Maybe (TranscriptionJobStatus)
  , "FailureReason" :: Maybe (FailureReason)
  }
derive instance newtypeTranscriptionJobSummary :: Newtype TranscriptionJobSummary _
derive instance repGenericTranscriptionJobSummary :: Generic TranscriptionJobSummary _
instance showTranscriptionJobSummary :: Show TranscriptionJobSummary where show = genericShow
instance decodeTranscriptionJobSummary :: Decode TranscriptionJobSummary where decode = genericDecode options
instance encodeTranscriptionJobSummary :: Encode TranscriptionJobSummary where encode = genericEncode options

-- | Constructs TranscriptionJobSummary from required parameters
newTranscriptionJobSummary :: TranscriptionJobSummary
newTranscriptionJobSummary  = TranscriptionJobSummary { "CompletionTime": Nothing, "CreationTime": Nothing, "FailureReason": Nothing, "LanguageCode": Nothing, "TranscriptionJobName": Nothing, "TranscriptionJobStatus": Nothing }

-- | Constructs TranscriptionJobSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTranscriptionJobSummary' :: ( { "TranscriptionJobName" :: Maybe (TranscriptionJobName) , "CreationTime" :: Maybe (DateTime) , "CompletionTime" :: Maybe (DateTime) , "LanguageCode" :: Maybe (LanguageCode) , "TranscriptionJobStatus" :: Maybe (TranscriptionJobStatus) , "FailureReason" :: Maybe (FailureReason) } -> {"TranscriptionJobName" :: Maybe (TranscriptionJobName) , "CreationTime" :: Maybe (DateTime) , "CompletionTime" :: Maybe (DateTime) , "LanguageCode" :: Maybe (LanguageCode) , "TranscriptionJobStatus" :: Maybe (TranscriptionJobStatus) , "FailureReason" :: Maybe (FailureReason) } ) -> TranscriptionJobSummary
newTranscriptionJobSummary'  customize = (TranscriptionJobSummary <<< customize) { "CompletionTime": Nothing, "CreationTime": Nothing, "FailureReason": Nothing, "LanguageCode": Nothing, "TranscriptionJobName": Nothing, "TranscriptionJobStatus": Nothing }



newtype Uri = Uri String
derive instance newtypeUri :: Newtype Uri _
derive instance repGenericUri :: Generic Uri _
instance showUri :: Show Uri where show = genericShow
instance decodeUri :: Decode Uri where decode = genericDecode options
instance encodeUri :: Encode Uri where encode = genericEncode options

