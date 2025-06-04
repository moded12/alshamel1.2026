import com.android.build.gradle.BaseExtension
import org.gradle.api.Project
import org.gradle.api.tasks.Delete

buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        classpath("com.google.gms:google-services:4.4.1")
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.set(newBuildDir)

subprojects {
    // Set build directory for subprojects
    val newSubprojectBuildDir = newBuildDir.dir(name)
    layout.buildDirectory.set(newSubprojectBuildDir)

    // Depend on app evaluation
    evaluationDependsOn(":app")

    // Add namespace fallback after the project is evaluated
    plugins.withId("com.android.application") {
        configureNamespaceIfMissing()
    }
    plugins.withId("com.android.library") {
        configureNamespaceIfMissing()
    }
}

// Clean task
tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}

// Helper function to set namespace if missing
fun Project.configureNamespaceIfMissing() {
    (extensions.findByName("android") as? BaseExtension)?.let { android ->
        if (android.namespace.isNullOrEmpty()) {
            android.namespace = name
            println("✅ Auto-set namespace for project '$name' to '$name'")
        }
    }
}
