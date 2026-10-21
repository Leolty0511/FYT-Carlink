.class public Lk0/jk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/jk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/jk;


# direct methods
.method public constructor <init>(Lk0/jk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/jk$a;->a:Lk0/jk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/jk$a;->a:Lk0/jk;

    const/4 v1, 0x0

    iput v1, v0, Lk0/jk;->h:I

    .line 2
    iput v1, v0, Lk0/jk;->i:I

    return-void
.end method
