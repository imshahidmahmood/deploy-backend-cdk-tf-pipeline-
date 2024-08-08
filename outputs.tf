output "codepipeline_arn" {
  description = "ARN of the CodePipeline"
  value       = aws_codepipeline.codepipeline.arn
}

output "codebuild_project_name" {
  description = "Name of the CodeBuild project"
  value       = aws_codebuild_project.build_project.name
}
