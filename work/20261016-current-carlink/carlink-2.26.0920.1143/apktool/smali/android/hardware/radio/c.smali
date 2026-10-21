.class public final synthetic Landroid/hardware/radio/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/hardware/radio/TunerCallbackAdapter;

.field public final synthetic d:Landroid/os/Parcelable;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/os/Parcelable;I)V
    .locals 0

    iput p3, p0, Landroid/hardware/radio/c;->b:I

    iput-object p1, p0, Landroid/hardware/radio/c;->c:Landroid/hardware/radio/TunerCallbackAdapter;

    iput-object p2, p0, Landroid/hardware/radio/c;->d:Landroid/os/Parcelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroid/hardware/radio/c;->b:I

    iget-object v1, p0, Landroid/hardware/radio/c;->c:Landroid/hardware/radio/TunerCallbackAdapter;

    iget-object v2, p0, Landroid/hardware/radio/c;->d:Landroid/os/Parcelable;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroid/hardware/radio/RadioManager$ProgramInfo;

    invoke-static {v1, v2}, Landroid/hardware/radio/TunerCallbackAdapter;->e(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void

    :goto_0
    check-cast v2, Landroid/hardware/radio/RadioManager$BandConfig;

    invoke-static {v1, v2}, Landroid/hardware/radio/TunerCallbackAdapter;->d(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
