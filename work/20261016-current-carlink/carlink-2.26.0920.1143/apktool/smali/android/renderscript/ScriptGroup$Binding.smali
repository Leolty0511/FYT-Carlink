.class public final Landroid/renderscript/ScriptGroup$Binding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Binding"
.end annotation


# instance fields
.field private final mField:Landroid/renderscript/Script$FieldID;

.field private final mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Binding;->mField:Landroid/renderscript/Script$FieldID;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/renderscript/ScriptGroup$Binding;->mValue:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getField()Landroid/renderscript/Script$FieldID;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Binding;->mField:Landroid/renderscript/Script$FieldID;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Binding;->mValue:Ljava/lang/Object;

    return-object v0
.end method
