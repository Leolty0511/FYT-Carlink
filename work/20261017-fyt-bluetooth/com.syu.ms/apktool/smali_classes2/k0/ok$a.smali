.class public Lk0/ok$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ok;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ok;


# direct methods
.method public constructor <init>(Lk0/ok;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ok$a;->a:Lk0/ok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ok$a;->a:Lk0/ok;

    const/4 v1, 0x0

    iput v1, v0, Lk0/ok;->i:I

    .line 2
    iput v1, v0, Lk0/ok;->j:I

    return-void
.end method
