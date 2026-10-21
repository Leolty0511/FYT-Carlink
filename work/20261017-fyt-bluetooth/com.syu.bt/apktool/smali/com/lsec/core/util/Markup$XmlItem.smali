.class public Lcom/lsec/core/util/Markup$XmlItem;
.super Ljava/lang/Object;
.source "Markup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/util/Markup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XmlItem"
.end annotation


# instance fields
.field public mAttrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mChild:Lcom/lsec/core/util/Markup$XmlItem;

.field public mNext:Lcom/lsec/core/util/Markup$XmlItem;

.field public mParent:Lcom/lsec/core/util/Markup$XmlItem;

.field public mPosEnd:I

.field public mPosStart:I

.field public mStrBuff:Ljava/lang/String;

.field final synthetic this$0:Lcom/lsec/core/util/Markup;


# direct methods
.method public constructor <init>(Lcom/lsec/core/util/Markup;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/lsec/core/util/Markup$XmlItem;->this$0:Lcom/lsec/core/util/Markup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
