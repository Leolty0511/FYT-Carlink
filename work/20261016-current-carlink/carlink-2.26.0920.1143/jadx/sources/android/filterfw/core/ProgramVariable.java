package android.filterfw.core;

import android.accessibilityservice.c;

/* JADX INFO: loaded from: classes.dex */
public class ProgramVariable {
    private Program mProgram;
    private String mVarName;

    public ProgramVariable(Program program, String str) {
        this.mProgram = program;
        this.mVarName = str;
    }

    public Program getProgram() {
        return this.mProgram;
    }

    public Object getValue() {
        Program program = this.mProgram;
        if (program != null) {
            return program.getHostValue(this.mVarName);
        }
        throw new RuntimeException(c.n(new StringBuilder("Attempting to get program variable '"), this.mVarName, "' but the program is null!"));
    }

    public String getVariableName() {
        return this.mVarName;
    }

    public void setValue(Object obj) {
        Program program = this.mProgram;
        if (program == null) {
            throw new RuntimeException(c.n(new StringBuilder("Attempting to set program variable '"), this.mVarName, "' but the program is null!"));
        }
        program.setHostValue(this.mVarName, obj);
    }
}
