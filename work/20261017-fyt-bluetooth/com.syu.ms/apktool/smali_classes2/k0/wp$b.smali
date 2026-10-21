.class public Lk0/wp$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/wp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/wp;


# direct methods
.method public constructor <init>(Lk0/wp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/wp$b;->a:Lk0/wp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/wp$b;->a:Lk0/wp;

    const/4 v1, 0x4

    iput v1, v0, Lk0/wp;->g:I

    .line 2
    invoke-static {}, Ll0/c0;->A0()V

    return-void
.end method
