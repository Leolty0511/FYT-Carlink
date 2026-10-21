.class Landroid/preference/VolumePreference$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;


# direct methods
.method public constructor <init>(Landroid/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {p1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$100(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {p1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$200(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {p1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$200(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$300(Landroid/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 4
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$100(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
