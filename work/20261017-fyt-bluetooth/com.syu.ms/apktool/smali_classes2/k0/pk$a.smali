.class public Lk0/pk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pk;


# direct methods
.method public constructor <init>(Lk0/pk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pk$a;->a:Lk0/pk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/pk$a;->a:Lk0/pk;

    const/4 v1, 0x0

    iput v1, v0, Lk0/pk;->h:I

    .line 2
    iput v1, v0, Lk0/pk;->i:I

    return-void
.end method
