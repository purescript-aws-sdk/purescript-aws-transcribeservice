
module AWS.TranscribeService.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.TranscribeService as TranscribeService
import AWS.TranscribeService.Types as TranscribeServiceTypes


-- | <p>Returns information about a transcription job. To see the status of the job, check the <code>Status</code> field. If the status is <code>COMPLETE</code>, the job is finished and you can find the results at the location specified in the <code>TranscriptionFileUri</code> field.</p>
getTranscriptionJob :: forall eff. TranscribeService.Service -> TranscribeServiceTypes.GetTranscriptionJobRequest -> Aff (exception :: EXCEPTION | eff) TranscribeServiceTypes.GetTranscriptionJobResponse
getTranscriptionJob (TranscribeService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getTranscriptionJob"


-- | <p>Lists transcription jobs with the specified status.</p>
listTranscriptionJobs :: forall eff. TranscribeService.Service -> TranscribeServiceTypes.ListTranscriptionJobsRequest -> Aff (exception :: EXCEPTION | eff) TranscribeServiceTypes.ListTranscriptionJobsResponse
listTranscriptionJobs (TranscribeService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTranscriptionJobs"


-- | <p>Starts an asynchronous job to transcribe speech to text.</p>
startTranscriptionJob :: forall eff. TranscribeService.Service -> TranscribeServiceTypes.StartTranscriptionJobRequest -> Aff (exception :: EXCEPTION | eff) TranscribeServiceTypes.StartTranscriptionJobResponse
startTranscriptionJob (TranscribeService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startTranscriptionJob"
