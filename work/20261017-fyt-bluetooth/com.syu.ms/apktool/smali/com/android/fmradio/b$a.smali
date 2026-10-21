.class public Lcom/android/fmradio/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/fmradio/b;


# direct methods
.method public constructor <init>(Lcom/android/fmradio/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/fmradio/b$a;->a:Lcom/android/fmradio/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ly0/j;->h3(II)V

    return-void
.end method
