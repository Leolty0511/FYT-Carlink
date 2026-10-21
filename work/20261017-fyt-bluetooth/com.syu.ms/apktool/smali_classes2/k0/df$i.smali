.class public Lk0/df$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/df;


# direct methods
.method public constructor <init>(Lk0/df;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/df$i;->a:Lk0/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/df$i;->a:Lk0/df;

    invoke-static {v0}, Lk0/df;->w3(Lk0/df;)V

    return-void
.end method
