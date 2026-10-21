.class public Lcom/android/fmradio/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/android/fmradio/a;

.field public b:Lcom/android/fmradio/a;

.field public c:Lcom/android/fmradio/a;


# direct methods
.method public constructor <init>(Lcom/android/fmradio/a;Lcom/android/fmradio/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/fmradio/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/fmradio/a;-><init>(III)V

    iput-object v0, p0, Lcom/android/fmradio/a$a;->c:Lcom/android/fmradio/a;

    .line 3
    iput-object p1, p0, Lcom/android/fmradio/a$a;->a:Lcom/android/fmradio/a;

    .line 4
    iput-object p2, p0, Lcom/android/fmradio/a$a;->b:Lcom/android/fmradio/a;

    return-void
.end method
