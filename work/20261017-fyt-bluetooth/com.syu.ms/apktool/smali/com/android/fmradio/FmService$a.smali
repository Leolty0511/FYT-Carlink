.class public Lcom/android/fmradio/FmService$a;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/android/fmradio/FmService;

.field public final synthetic b:Lcom/android/fmradio/FmService;


# direct methods
.method public constructor <init>(Lcom/android/fmradio/FmService;Lcom/android/fmradio/FmService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FmService$a;->b:Lcom/android/fmradio/FmService;

    .line 2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/android/fmradio/FmService$a;->a:Lcom/android/fmradio/FmService;

    return-void
.end method
