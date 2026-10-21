.class public interface abstract Landroid/hardware/cas/V1_0/IMediaCasService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/cas/V1_0/IMediaCasService$Stub;,
        Landroid/hardware/cas/V1_0/IMediaCasService$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hardware.cas@1.0::IMediaCasService"


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract createDescrambler(I)Landroid/hardware/cas/V1_0/IDescramblerBase;
.end method

.method public abstract createPlugin(ILandroid/hardware/cas/V1_0/ICasListener;)Landroid/hardware/cas/V1_0/ICas;
.end method

.method public abstract enumeratePlugins()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
.end method

.method public abstract isDescramblerSupported(I)Z
.end method

.method public abstract isSystemIdSupported(I)Z
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
.end method

.method public abstract notifySyspropsChanged()V
.end method

.method public abstract ping()V
.end method

.method public abstract setHALInstrumentation()V
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
.end method
