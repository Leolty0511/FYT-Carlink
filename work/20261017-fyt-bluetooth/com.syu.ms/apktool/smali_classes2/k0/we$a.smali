.class public Lk0/we$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/we;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/we;


# direct methods
.method public constructor <init>(Lk0/we;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/we$a;->a:Lk0/we;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/we$a;->a:Lk0/we;

    const/4 v1, 0x0

    iput v1, v0, Lk0/we;->g:I

    .line 2
    iput v1, v0, Lk0/we;->h:I

    return-void
.end method
