package ${packageName}

import android.arch.lifecycle.ViewModel
import ${applicationPackage}.utils.annotations.ViewModelKey
import dagger.Binds
import dagger.Module
import dagger.android.ContributesAndroidInjector
import dagger.multibindings.IntoMap

@Module
abstract class ${moduleName} {
    @Binds @IntoMap @ViewModelKey(${presenterViewModelName}::class) abstract fun bind${presenterViewModelName}(viewModel: ${presenterViewModelName}): ViewModel
    @ContributesAndroidInjector abstract fun contribute${fragmentName}():${fragmentName}

    /* FIXME MUST add below method to BindingModules */
    // @ContributesAndroidInjector(modules = [${moduleName}::class]) @ActivityScope abstract fun contribute${activityName}Injector(): ${activityName}
}
